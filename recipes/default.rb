#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Steve Lum
#
# Apache 2.0 license
#

include_recipe "ark"

if platform_family?("debian")
  init_script_file = "jmxtrans.init.deb.erb"
elsif platform_family?("rhel")
  init_script_file = "jmxtrans.init.el.erb"
end

user node['jmxtrans']['user']

data = data_bag_item("jmxtrans", "jmxtrans")
servers = data['jmxtrans']['servers']
servers.each do |server|
  server['queries'] = []
  server['queries'] << node['jmxtrans']['default_queries']['jvm']
  case server['type']
  when 'tomcat'
    server['queries'] << node['jmxtrans']['default_queries']['tomcat']
  when 'tempo-web-server'
    server['queries'] << node['jmxtrans']['default_queries']['tempo-web-server']
  when 'tempo-harvester'
    server['queries'] << node['jmxtrans']['default_queries']['tempo-harvester']
  when 'tempo-semantic'
    server['queries'] << node['jmxtrans']['default_queries']['tempo-semantic']
  when 'tempo-indexer'
    server['queries'] << node['jmxtrans']['default_queries']['tempo-indexer']
  when 'tempo-utility'
    server['queries'] << node['jmxtrans']['default_queries']['tempo-utility']
  when 'kafka'
    server['queries'] << node['jmxtrans']['default_queries']['kafka']
  end
  server['queries'].flatten!
end

ark "jmxtrans" do
  url node['jmxtrans']['url']
  checksum node['jmxtrans']['checksum']
  version "latest"
  prefix_root '/opt'
  prefix_home '/opt'
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
end

template "/etc/init.d/jmxtrans" do
  source init_script_file
  owner "root"
  group "root"
  mode  "0755"
  variables( :name => 'jmxtrans' )
  notifies :restart, "service[jmxtrans]"
end

template "/etc/default/jmxtrans" do
  source "jmxtrans_default.erb"
  owner "root"
  group "root"
  mode  "0644"
  notifies :restart, "service[jmxtrans]"
end

directory node['jmxtrans']['log_dir'] do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode  "0755"
end

directory "#{node['jmxtrans']['home']}/json" do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode  "0755"
end

template "#{node['jmxtrans']['home']}/json/set1.json" do
  source "set1.json.erb"
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode  "0755"
  notifies :restart, "service[jmxtrans]"
  variables(
            :servers => servers,
            :graphite_host => node['jmxtrans']['graphite']['host'],
            :graphite_port => node['jmxtrans']['graphite']['port'],
            :root_prefix => node['jmxtrans']['root_prefix']
            )
end

package 'gzip'

cron "compress and remove logs rotated by log4j" do
  minute "0"
  hour   "0"
  command  "find #{node['jmxtrans']['log_dir']}/ -name '*.gz' -mtime +30 -exec rm -f '{}' \\; ; \
  find #{node['jmxtrans']['log_dir']} ! -name '*.gz' -mtime +2 -exec gzip '{}' \\;"
end

execute "set correct jps alternative" do
  command "update-alternatives jps --auto jps"
  creates "/usr/bin/jps"
end

service "jmxtrans" do
  supports :restart => true, :status => true, :reload => true
  action [ :enable, :start]
end

