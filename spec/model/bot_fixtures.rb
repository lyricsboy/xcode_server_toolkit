class BotFixtures
  
  def self.standard_bot
    XcodeServerToolkit::Model::Bot.new(XCODE_BOT_JSON)
  end
  
end

XCODE_BOT_JSON = <<END_JSON
{
  "_id": "851f5c39c6f2d5cfe1bd6dda57a2cf12",
  "_rev": "32-05789070e9221be3791805a3dc60f30d",
  "group": {
    "name": "098EFF82-72AC-43A8-A876-0A6013C43F36"
  },
  "configuration": {
    "builtFromClean": 1,
    "periodicScheduleInterval": 0,
    "codeCoveragePreference": 2,
    "performsTestAction": true,
    "triggers": [
      {
        "phase": 2,
        "scriptBody": "",
        "type": 2,
        "name": "Send Email Notification",
        "conditions": {
          "status": 2,
          "onWarnings": true,
          "onBuildErrors": true,
          "onInternalErrors": true,
          "onAnalyzerWarnings": true,
          "onFailingTests": true,
          "onSuccess": false
        },
        "emailConfiguration": {
          "includeCommitMessages": false,
          "additionalRecipients": [
            "interested-parties@foo.com"
          ],
          "emailCommitters": false,
          "scmOptions": {
            "2F560931E10647CA0F969DF0553AD6B2F1881EB4": true
          },
          "includeIssueDetails": true
        }
      }
    ],
    "performsAnalyzeAction": true,
    "schemeName": "MyApp",
    "exportsProductFromArchive": true,
    "testingDeviceIDs": [],
    "deviceSpecification": {
      "filters": [
        {
          "platform": {
            "_id": "851f5c39c6f2d5cfe1bd6dda5700393b",
            "displayName": "iOS",
            "_rev": "3-2cb3d8572f575575d75d845d0462bcc8",
            "simulatorIdentifier": "com.apple.platform.iphonesimulator",
            "identifier": "com.apple.platform.iphoneos",
            "buildNumber": "13B137",
            "version": "9.1"
          },
          "filterType": 3,
          "architectureType": 0
        }
      ],
      "deviceIdentifiers": [
        "851f5c39c6f2d5cfe1bd6dda57007189",
        "851f5c39c6f2d5cfe1bd6dda579574d1"
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
          "DVTSourceControlBranchIdentifierKey": "master",
          "DVTSourceControlBranchOptionsKey": 5,
          "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
        }
      },
      "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
      "DVTSourceControlWorkspaceBlueprintWorkingCopyRepositoryLocationsKey": {},
      "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationStrategiesKey": {
        "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryAuthenticationTypeKey": "DVTSourceControlAuthenticationStrategy"
        }
      },
      "DVTSourceControlWorkspaceBlueprintWorkingCopyStatesKey": {
        "2F560931E10647CA0F969DF0553AD6B2F1881EB4": 0
      },
      "DVTSourceControlWorkspaceBlueprintIdentifierKey": "452FE17F-AC5A-4D24-8862-BD23040F3C4A",
      "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
        "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "MyApp/"
      },
      "DVTSourceControlWorkspaceBlueprintNameKey": "MyApp",
      "DVTSourceControlWorkspaceBlueprintVersion": 204,
      "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "MyApp.xcworkspace",
      "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
        {
          "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://github.com/myapp/myapp.git",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustedCertFingerprintKey": "8C4F7C088AC25B74D75F9FD8813E0305",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
          "DVTSourceControlWorkspaceBlueprintRemoteRepositoryTrustSelfSignedCertKey": false
        }
      ]
    },
    "testingDestinationType": 0
  },
  "requiresUpgrade": false,
  "name": "jimbo's favorite bot",
  "type": 1,
  "integration_counter": 13,
  "doc_type": "bot",
  "tinyID": "81C7DA8",
  "lastRevisionBlueprint": {
    "DVTSourceControlWorkspaceBlueprintLocationsKey": {
      "2F560931E10647CA0F969DF0553AD6B2F1881EB4": {
        "DVTSourceControlBranchIdentifierKey": "some/other/branch",
        "DVTSourceControlLocationRevisionKey": "232804d8554e0899f32c9fa63191180bd392bad8",
        "DVTSourceControlBranchOptionsKey": 4,
        "DVTSourceControlWorkspaceBlueprintLocationTypeKey": "DVTSourceControlBranch"
      }
    },
    "DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4",
    "DVTSourceControlWorkspaceBlueprintIdentifierKey": "3AE5C10C-9F70-4236-9FEC-9CC26D76FD0C",
    "DVTSourceControlWorkspaceBlueprintWorkingCopyPathsKey": {
      "2F560931E10647CA0F969DF0553AD6B2F1881EB4": "MyApp/"
    },
    "DVTSourceControlWorkspaceBlueprintNameKey": "MyApp",
    "DVTSourceControlWorkspaceBlueprintVersion": 204,
    "DVTSourceControlWorkspaceBlueprintRelativePathToProjectKey": "MyApp.xcworkspace",
    "DVTSourceControlWorkspaceBlueprintRemoteRepositoriesKey": [
      {
        "DVTSourceControlWorkspaceBlueprintRemoteRepositorySystemKey": "com.apple.dt.Xcode.sourcecontrol.Git",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryURLKey": "https://github.com/myapp/myapp.git",
        "DVTSourceControlWorkspaceBlueprintRemoteRepositoryIdentifierKey": "2F560931E10647CA0F969DF0553AD6B2F1881EB4"
      }
    ]
  }
}
END_JSON