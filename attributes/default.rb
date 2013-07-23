default['jmxtrans']['install_prefix'] = '/opt'
default['jmxtrans']['home'] = "#{default['jmxtrans']['install_prefix']}/jmxtrans"
default['jmxtrans']['log_dir'] = '/var/log/jmxtrans'
default['jmxtrans']['user'] = 'jmxtrans'
default['jmxtrans']['url'] = 'https://github.com/downloads/jmxtrans/jmxtrans/jmxtrans-20121016-151320-36564abc7e.zip'
default['jmxtrans']['checksum'] = '0a5a2c361cc666f5a7174e2c77809e1a973c3af62868d407c68beb892f1b0217'
default['jmxtrans']['heap_size'] = '512'
default['jmxtrans']['run_interval'] = '60'
default['jmxtrans']['log_level'] = 'debug'
default['jmxtrans']['graphite']['host'] = 'graphite1.ops.tempo.ai'
default['jmxtrans']['graphite']['port'] = '2003'

default['jmxtrans']['root_prefix'] = "jmx"
default['jmxtrans']['default_queries'] = {
  'tempo-web-server' => [
    {
      "result_alias" => "createEntities",
      "obj" => "ai.tempo.performance:type=webserver,group=createEntities",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    },
    {
      "result_alias" => "getEntities",
      "obj" => "ai.tempo.performance:type=webserver,group=getEntities",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    },
    {
      "result_alias" => "findRelatedResults",
      "obj" => "ai.tempo.performance:type=webserver,group=findRelatedResults",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    },
    {
      "result_alias" => "getEntityTimeStamps",
      "obj" => "ai.tempo.performance:type=webserver,group=getEntityTimeStamps",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    },
    {
      "result_alias" => "getMeetings",
      "obj" => "ai.tempo.performance:type=webserver,group=getMeetings",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    },
    {
      "result_alias" => "reprocessEntities",
      "obj" => "ai.tempo.performance:type=webserver,group=reprocessEntities",
      "attr" => [ "AvgCallsPerSec", "AvgProcessTime" ]
    }
  ],
  'tempo-harvester' => [
    {
      "result_alias" => "exCal",
      "obj" => "ai.tempo.performance:type=harvest,group=exCal",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "exContacts",
      "obj" => "ai.tempo.performance:type=harvest,group=exContacts",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "exCal",
      "obj" => "ai.tempo.performance:type=harvest,group=exCal",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "exContacts_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=exContacts_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "exMsg",
      "obj" => "ai.tempo.performance:type=harvest,group=exMsg",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "exMsg_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=exMsg_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "facebook",
      "obj" => "ai.tempo.performance:type=harvest,group=facebook",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "gCal",
      "obj" => "ai.tempo.performance:type=harvest,group=gCal",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "gContacts",
      "obj" => "ai.tempo.performance:type=harvest,group=gContacts",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "gContacts_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=gContacts_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "iCloudCal",
      "obj" => "ai.tempo.performance:type=harvest,group=iCloudCal",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "iCloudImap",
      "obj" => "ai.tempo.performance:type=harvest,group=iCloudImap",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "iCloudImap_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=iCloudImap_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "imap",
      "obj" => "ai.tempo.performance:type=harvest,group=imap",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "imap_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=imap_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "linkedIn",
      "obj" => "ai.tempo.performance:type=harvest,group=linkedIn",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "pop",
      "obj" => "ai.tempo.performance:type=harvest,group=pop",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "pop_priority",
      "obj" => "ai.tempo.performance:type=harvest,group=pop_priority",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    }
  ],
  'tempo-indexer' => [
    {
      "result_alias" => "index_pipeline",
      "obj" => "ai.tempo.performance:type=index,group=index_pipeline",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "priority_index_pipeline",
      "obj" => "ai.tempo.performance:type=index,group=priority_index_pipeline",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    }
  ],
  'tempo-utility' => [
    {
      "result_alias" => "campaign_handler",
      "obj" => "ai.tempo.performance:type=utilities,group=campaign_handler",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "hadoop_handler",
      "obj" => "ai.tempo.performance:type=utilities,group=hadoop_handler",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "report_handler",
      "obj" => "ai.tempo.performance:type=utilities,group=report_handler",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "utilities_pipeline",
      "obj" => "ai.tempo.performance:type=utilities,group=utilities_pipeline",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    }
  ],
  'tempo-semantic' => [
    {
      "result_alias" => "belief_taggers",
      "obj" => "ai.tempo.performance:type=semantic,group=belief_taggers",
      "attr" => [
        "BeliefAssociatorPipeline",
        "BeliefBoosterPipeline",
        "BeliefDelighterPipeline",
        "BeliefMergerPipeline",
        "BeliefReducerPipeline",
        "BirthDelighter",
        "CalendarBodyContactBeliefAssociator",
        "CalendarContactDeDupBeliefReducer",
        "CalendarContactRemoveSelfReducer",
        "CalendarEventDialInNumberBeliefAssociator",
        "CalendarEventDialInNumberBeliefBooster",
        "CalendarEventDialInNumberBeliefReducer",
        "CalendarEventDialInNumberFromFlightBeliefReducer",
        "CalendarEventDialInNumberFromSignatureReducer",
        "CalendarEventFlightBeliefAssociator",
        "CalendarEventFlightFromTripItFlightReducer",
        "CalendarEventIdenticalAddressesBeliefReducer",
        "CalendarEventIdenticalLocationBeliefReducer",
        "CalendarEventLocationAddressCityBeliefBooster",
        "CalendarEventLocationBeliefAssociator",
        "CalendarEventLocationCityBeliefReducer",
        "CalendarEventLocationFieldMappableValidator",
        "CalendarEventLocationFromCityNearbyBeliefReducer",
        "CalendarEventLocationFromDialInNumberBeliefReducer",
        "CalendarEventLocationFromFlightBeliefReducer",
        "CalendarEventLocationFromInternalRoomBeliefReducer",
        "CalendarEventLocationFromParticipantsBeliefReducer",
        "CalendarEventLocationFromPartsOfAddressBeliefReducer",
        "CalendarEventLocationFromPersonsBirthdayBeliefReducer",
        "CalendarEventLocationFromRecurringMeetingsWithInvitedParticipantsBeliefReducer",
        "CalendarEventLocationNameAddressBeliefMerger",
        "CalendarEventLocationNameEqualsCityBeliefReducer",
        "CalendarEventLocationRestaurantCityBeliefMerger",
        "CalendarEventParticipantBeliefAssociator",
        "CalendarEventParticipantFromContentBeliefReducer",
        "CalendarEventParticipantFromFirstNameBeliefReducer",
        "CalendarEventParticipantFromHolidayBeliefReducer",
        "CalendarEventStreetAddressCityBeliefMerger",
        "CalendarEventStreetFromLocationBeliefReducer",
        "CalendarEventSubLocationBeliefReducer",
        "CalendarEventVideoConferencingBeliefAssociator",
        "CalendarFromToBeliefAssociator",
        "CalendarTitlePhoneBeliefAssociator",
        "CompanyInTitleReducer",
        "ContactMergeBeliefAssociator",
        "EmailCommunicationReducer",
        "EmailFromBeliefAssociator",
        "EmailSignatureBeliefAssociator",
        "FlightDelighter",
        "FullNameInTitleReducer",
        "GoogleDocBeliefAssociator",
        "HasPhoneAndEmailBooster",
        "HolidayDelighter",
        "InitialsBeliefAssociator",
        "LocationBeliefAssociator",
        "MoreUniqueBooster",
        "MultiPartNameReducer",
        "NoEmailOrPhoneReducer",
        "PostBeliefPipeline",
        "PostCalendarContactMerger",
        "PreBeliefPipeline",
        "StandardDelighter"
       ]
    },
    {
      "result_alias" => "priority_tagger_pipeline",
      "obj" => "ai.tempo.performance:type=semantic,group=priority_tagger_pipeline",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "tagger_pipeline",
      "obj" => "ai.tempo.performance:type=semantic,group=tagger_pipeline",
      "attr" => [ "ActiveThreadCount", "AvgProcessTime", "AvgQueueLatencyInSec", "ErrorCount", "FatalCount", "LastErrorTime", "LastMessageTime", "MessageCount", "ProcessingThreadCount", "RollingErrorCount", "SecondsOnQueue" ]
    },
    {
      "result_alias" => "taggers",
      "obj" => "ai.tempo.performance:type=semantic,group=taggers",
      "attr" => [
        "AirportTagger",
        "AllMenusTagger",
        "BaseBowlingTagger",
        "BaseCompanyTagger",
        "BaseConferenceHallTagger",
        "BaseGolfCourseTagger",
        "BaseHealthClubTagger",
        "BaseHighSchoolTagger",
        "BaseHotelTagger",
        "BaseLocationTagger",
        "BaseMedicalFacilityTagger",
        "BaseMovieTheaterTagger",
        "BaseMuseumTagger",
        "BaseMusicVenueTagger",
        "BaseParkTagger",
        "BaseRestaurantTagger",
        "BaseSchoolTagger",
        "BaseStadiumTagger",
        "BaseUrlLocationTagger",
        "BaseVenturesTagger",
        "BirthdayTagger",
        "BowlingTagger",
        "CitySearchTagger",
        "CityZipTagger",
        "CompanyTagger",
        "ConferenceHallTagger",
        "ContactCountTagger",
        "ContentSignatureTagger",
        "CountryTagger",
        "DateTagger",
        "DialInNumberTagger",
        "DictCompanyNameTagger",
        "DictContactNameTagger",
        "EmailAddressTagger",
        "FamilyNameTagger",
        "FlightNumberTagger",
        "FourSquareTagger",
        "FullAddressTagger",
        "GivenNameTagger",
        "GolfCourseTagger",
        "GivenNameTagger",
        "GolfCourseTagger",
        "GoogleDocTagger",
        "GoogleMapsTagger",
        "GotomeetingTagger",
        "HealthClubTagger",
        "HighSchoolTagger",
        "HolidayTagger",
        "HonorificTagger",
        "HotelTagger",
        "LocationDBTagger",
        "MedicalFacilityTagger",
        "MovieTheaterTagger",
        "MuseumTagger",
        "MusicVenueTagger",
        "NameSuffixTagger",
        "NickNameTagger",
        "OpenTableTagger",
        "ParkTagger",
        "PersonFullNameTagger",
        "PhoneTagger",
        "PostSemanticTagger",
        "PreSemanticTagger",
        "ProperNounInLowerCaseTagger",
        "ProperNounTagger",
        "RestaurantTagger",
        "ReverseFullNameLocationTagger",
        "RoomTagger",
        "SaveTags",
        "SchoolTagger",
        "SemanticPipeline",
        "SemanticTokenizer",
        "SkypeTagger",
        "StadiumTagger",
        "StateAndProvinceTagger",
        "StreetAddressTagger",
        "TripAdvisorTagger",
        "UrlTagger",
        "VenturesTagger",
        "WebexTagger",
        "WorldCityTagger",
        "YelpRestaurantTagger"
      ]
    }
  ],
  'kafka' => [
    {
      "result_alias" => "kafka.socketServerStats",
      "obj" => "kafka:type=kafka.SocketServerStats",
      "attr" => [
        "AvgFetchRequestMs",
        "AvgProduceRequestMs",
        "BytesReadPerSecond",
        "BytesWrittenPerSecond",
        "FetchRequestsPerSecond",
        "MaxFetchRequestMs",
        "MaxProduceRequestMs",
        "NumFetchRequests",
        "NumProduceRequests",
        "ProduceRequestsPerSecond",
        "TotalBytesRead",
        "TotalBytesWritten",
        "TotalFetchRequestMs",
        "TotalProduceRequestMs"
      ]
    },
    {
      "result_alias" =>"kafka.Log4jController",
      "obj" => "kafka:type=kafka.Log4jController",
      "attr" => [ "Loggers" ]
    }
  ],
  'jvm' => [
            {
              "result_alias" => "memory",
              "obj" => "java.lang:type=Memory",
              "attr" => [ "HeapMemoryUsage", "NonHeapMemoryUsage" ]
            },
            {
              "result_alias" => "memorypool",
              "obj" => "java.lang:type=MemoryPool,name=*",
              "attr" => [ "Usage" ]
            },
            {
              "result_alias" => "gc",
              "obj" => "java.lang:type=GarbageCollector,name=*",
              "attr" => [ "CollectionCount", "CollectionTime" ]
            },
            {
            "result_alias" => "threads",
            "obj" => "java.lang:type=Threading",
            "attr" => [
                       "DaemonThreadCount",
                       "PeakThreadCount",
                       "ThreadCount",
                       "TotalStartedThreadCount"
                      ]
            }
           ],
  'tomcat' => [
               {
                 'obj' => "Catalina:type=ThreadPool,name=*",
                 'result_alias' => "connectors",
                 'attr' => [ "currentThreadCount", "currentThreadsBusy", "" ]
               },
               {
                 'obj' => "Catalina:type=GlobalRequestProcessor,name=*",
                 'result_alias' => "requests",
                 'attr' => [ "bytesReceived", "bytesSent", "errorCount", "maxTime", "processingTime", "requestCount" ]
               },
               {  "obj" => "Catalina:type=DataSource,class=javax.sql.DataSource,name=*",
                 "result_alias" => "datasources",
                 "attr" => [ "NumActive", "NumIdle", "NumQueryThreads" ]
               }
              ]
}

