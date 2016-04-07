class IntegrationFixtures
  
  def self.running_integration
    XcodeServerToolkit::Model::Integration.new(XCODE_RUNNING_INTEGRATION_JSON)
  end
  
  def self.pending_integration
    XcodeServerToolkit::Model::Integration.new(XCODE_PENDING_INTEGRATION_JSON)
  end
  
end

XCODE_RUNNING_INTEGRATION_JSON = <<END_JSON
{
  "_id": "13e0f43576a18a30f81e80c47a002801",
  "_rev": "8-114857bc37a23795114a7f65864e89b3",
  "number": 1,
  "result": "unknown",
  "success_streak": 0,
  "assets": {
  },
  "bot": {
    "_id": "13e0f43576a18a30f81e80c47a001460",
    "_rev": "7-e23b320fd7ac39120af9b48a4f53e6f1",
    "group": {
      "name": "DCD1BB6D-8455-438D-A4AD-24A4450315FF"
    },
    "configuration": {
      "builtFromClean": 2,
      "periodicScheduleInterval": 0,
      "codeCoveragePreference": 2,
      "performsTestAction": true,
      "triggers": [
        {
          "phase": 2,
          "scriptBody": "export GITLAB_API_PRIVATE_TOKEN=xxx\\ncd LithgowApp\\n/usr/bin/ruby tools/gitlab_integration_report.rb",
          "type": 1,
          "name": "Run Script",
          "conditions": {
            "status": 2,
            "onWarnings": true,
            "onBuildErrors": true,
            "onInternalErrors": true,
            "onAnalyzerWarnings": true,
            "onFailingTests": true,
            "onSuccess": true
          }
        }
      ],
      "performsAnalyzeAction": true,
      "schemeName": "Lithgow (Unit Tests)",
      "exportsProductFromArchive": true,
      "testingDeviceIDs": [

      ],
      "deviceSpecification": {
        "filters": [
          {
            "platform": {
              "_id": "ac512c75f65dbd158516f9d04e0029e8",
              "displayName": "iOS",
              "_rev": "3-434d17305c4b380ac13b6c0128c9c7e3",
              "simulatorIdentifier": "com.apple.platform.iphonesimulator",
              "identifier": "com.apple.platform.iphoneos",
              "buildNumber": "13C75",
              "version": "9.2"
            },
            "filterType": 3,
            "architectureType": 0
          }
        ],
        "deviceIdentifiers": [
          "ac512c75f65dbd158516f9d04e0053a6",
          "ac512c75f65dbd158516f9d04e007c6a"
        ]
      },
      "weeklyScheduleDay": 0,
      "minutesAfterHourToIntegrate": 0,
      "scheduleType": 3,
      "hourOfIntegration": 0,
      "performsArchiveAction": false,
      "sourceControlBlueprint": {
        "DVTSourceControlWorkspaceBlueprintLocationsKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
            "DVTSourceControlBranchIdentifierKey": "jjm/env-switching",
            "DVTSourceControlBranchOptionsKey": 4,
            "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
          }
        },
        "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
        "DVTSourceControlWorkspaceBlueprintWorkingCopyRepositoryLocationsKey": {
        },
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationStrategiesKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationTypeKey": "DVTSourceControlAuthenticationStrategy"
          }
        },
        "DVTSourceControlWorkspaceBlueprintWorkingCopyStatesKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": 0
        },
        "DVTSourceControlWorkspaceBlueprintIdentifierKey": "8F45AB8F-9A17-49C1-BF6C-C412733BF3F7",
        "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "LithgowApp/"
        },
        "DVTSourceControlWorkspaceBlueprintNameKey": "Lithgow",
        "DVTSourceControlWorkspaceBlueprintVersion": 204,
        "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "Lithgow.xcworkspace",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
          {
            "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://gitlab.corp.apple.com/geniusapp/lithgowapp.git",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustedCertFingerprintKey": "8C4F7C088AC25B74D75F9FD8813E0305",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustSelfSignedCertKey": true
          }
        ]
      },
      "testingDestinationType": 0
    },
    "requiresUpgrade": false,
    "name": "Imperial Probe",
    "type": 1,
    "integration_counter": 1,
    "doc_type": "bot",
    "tinyID": "388715F",
    "sourceControlBlueprintIdentifier": "200405C9-5406-4E88-A004-83CC66588116"
  },
  "shouldClean": false,
  "doc_type": "integration",
  "currentStep": "building",
  "queuedDate": "2016-04-05T16:39:28.361Z",
  "tinyID": "AF98EEA",
  "buildServiceFingerprint": "A3:F7:7C:3F:D3:C5:43:36:D9:39:4C:D3:94:CE:C6:F7:17:0C:6E:D1",
  "tags": [

  ],
  "startedTime": "2016-04-05T17:07:42.477Z",
  "revisionBlueprint": {
    "DVTSourceControlWorkspaceBlueprintLocationsKey": {
      "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
        "DVTSourceControlBranchIdentifierKey": "jjm/env-switching",
        "DVTSourceControlLocationRevisionKey": "33cba34204c686540f77a7e57ea78a4afc14b5c7",
        "DVTSourceControlBranchOptionsKey": 4,
        "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
      }
    },
    "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
    "DVTSourceControlWorkspaceBlueprintIdentifierKey": "CF9B3FFB-C9C9-467D-A31F-3148EAEFA88D",
    "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
      "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "LithgowApp/"
    },
    "DVTSourceControlWorkspaceBlueprintNameKey": "Lithgow",
    "DVTSourceControlWorkspaceBlueprintVersion": 204,
    "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "Lithgow.xcworkspace",
    "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
      {
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://gitlab.corp.apple.com/geniusapp/lithgowapp.git",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4"
      }
    ]
  }
}
END_JSON

XCODE_PENDING_INTEGRATION_JSON = <<END_JSON
{
  "_id": "e69cc1bcadba5be87cc90cebf396e5d4",
  "_rev": "3-22ece1c97eec697e6358d7774fc5af94",
  "number": 3,
  "result": "unknown",
  "success_streak": 0,
  "assets": {
  },
  "bot": {
    "_id": "83bc442fb43f004d7bedbf3b995ebd01",
    "_rev": "12-7158900589c0535ad18661800ef11090",
    "group": {
      "name": "24A3F3CF-DD98-46CF-B91D-1B4253F7A76E"
    },
    "configuration": {
      "builtFromClean": 1,
      "periodicScheduleInterval": 0,
      "codeCoveragePreference": 2,
      "performsTestAction": true,
      "triggers": [
        {
          "phase": 1,
          "scriptBody": "cd lithgowapp\\n/usr/bin/ruby tools/gitlab_integration_running_bot.rb",
          "type": 1,
          "name": "Run Script"
        },
        {
          "phase": 2,
          "scriptBody": "cd lithgowapp\\n/usr/bin/ruby tools/gitlab_integration_report.rb",
          "type": 1,
          "name": "Run Script",
          "conditions": {
            "status": 2,
            "onWarnings": true,
            "onBuildErrors": true,
            "onInternalErrors": true,
            "onAnalyzerWarnings": true,
            "onFailingTests": true,
            "onSuccess": true
          }
        }
      ],
      "performsAnalyzeAction": true,
      "schemeName": "Lithgow (Unit Tests)",
      "exportsProductFromArchive": true,
      "testingDeviceIDs": [

      ],
      "deviceSpecification": {
        "filters": [
          {
            "platform": {
              "_id": "83bc442fb43f004d7bedbf3b99003b15",
              "displayName": "iOS",
              "_rev": "4-69cd74bce7ee96a714769348aa305329",
              "simulatorIdentifier": "com.apple.platform.iphonesimulator",
              "identifier": "com.apple.platform.iphoneos",
              "buildNumber": "13E230",
              "version": "9.3"
            },
            "filterType": 3,
            "architectureType": 0
          }
        ],
        "deviceIdentifiers": [
          "83bc442fb43f004d7bedbf3b99009436",
          "83bc442fb43f004d7bedbf3b99009b4e",
          "83bc442fb43f004d7bedbf3b9900b2d4",
          "83bc442fb43f004d7bedbf3b9900d214"
        ]
      },
      "weeklyScheduleDay": 0,
      "minutesAfterHourToIntegrate": 0,
      "scheduleType": 3,
      "hourOfIntegration": 0,
      "performsArchiveAction": false,
      "buildEnvironmentVariables": {
        "GITLAB_API_PRIVATE_TOKEN": "mEcxZZH-sV2gaU-oPwqg"
      },
      "sourceControlBlueprint": {
        "DVTSourceControlWorkspaceBlueprintLocationsKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
            "DVTSourceControlBranchIdentifierKey": "jjm/HVT-order-enhancements",
            "DVTSourceControlBranchOptionsKey": 4,
            "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
          }
        },
        "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
        "DVTSourceControlWorkspaceBlueprintWorkingCopyRepositoryLocationsKey": {
        },
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationStrategiesKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationTypeKey": "DVTSourceControlAuthenticationStrategy"
          }
        },
        "DVTSourceControlWorkspaceBlueprintWorkingCopyStatesKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": 0
        },
        "DVTSourceControlWorkspaceBlueprintIdentifierKey": "C217EE75-35CD-4A3B-ACD4-D57C73765235",
        "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
          "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "lithgowapp/"
        },
        "DVTSourceControlWorkspaceBlueprintNameKey": "Lithgow",
        "DVTSourceControlWorkspaceBlueprintVersion": 204,
        "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "Lithgow.xcworkspace",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
          {
            "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://gitlab.corp.apple.com/geniusapp/lithgowapp.git",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustedCertFingerprintKey": "8C4F7C088AC25B74D75F9FD8813E0305",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
            "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustSelfSignedCertKey": true
          }
        ]
      },
      "testingDestinationType": 0
    },
    "requiresUpgrade": false,
    "name": "bhardybot",
    "type": 1,
    "sourceControlBlueprintIdentifier": "71DF4568-A4AF-46F0-A361-C067AF80D1C8",
    "integration_counter": 3,
    "doc_type": "bot",
    "tinyID": "1517250",
    "lastRevisionBlueprint": {
      "DVTSourceControlWorkspaceBlueprintLocationsKey": {
        "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
          "DVTSourceControlBranchIdentifierKey": "bhardy/keychain-user-storage-25033359",
          "DVTSourceControlLocationRevisionKey": "ab019359d0d9f5961de61535263ce8c5b277ca2b",
          "DVTSourceControlBranchOptionsKey": 4,
          "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
        }
      },
      "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
      "DVTSourceControlWorkspaceBlueprintIdentifierKey": "10736FFD-A738-407F-97EA-15DA8513E713",
      "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
        "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "lithgowapp/"
      },
      "DVTSourceControlWorkspaceBlueprintNameKey": "Lithgow",
      "DVTSourceControlWorkspaceBlueprintVersion": 204,
      "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "Lithgow.xcworkspace",
      "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
        {
          "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://gitlab.corp.apple.com/geniusapp/lithgowapp.git",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4"
        }
      ]
    }
  },
  "shouldClean": false,
  "doc_type": "integration",
  "currentStep": "pending",
  "queuedDate": "2016-04-06T22:53:12.766Z",
  "tinyID": "E36F68B"
}
END_JSON