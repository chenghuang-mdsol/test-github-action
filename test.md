## Summary of Rave Database Schema Changes between Rave 2021.1.4 and Rave 2021.2.1 ##
Last updated: 2022-02-10

**Table**: ```AuditsExtended```
**What changed**: new table
**Column(s)**:

|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|AuditID|\<did not exist\>|bigint NOT NULL|
|ValueVarchar|\<did not exist\>|varchar(8000) NOT NULL| 

**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```ClinicalViewErrors3```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|ClinicalViewsErrorId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|ProjectId|\<did not exist\>|int NOT NULL|
|Formoid|\<did not exist\>|varchar(50) NOT NULL|
|Save_ts|\<did not exist\>|datetime NOT NULL|
|Sql|\<did not exist\>|nvarchar(MAX) NULL|
|Error_message|\<did not exist\>|nvarchar(8000) NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```eProAudit```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|eProAuditId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|ProjectId|\<did not exist\>|int NOT NULL|
|CRFVersionId|\<did not exist\>|int NOT NULL|
|SourceLocaleId|\<did not exist\>|int NULL|
|TargetLocaleId|\<did not exist\>|int NULL|
|AuditUserId|\<did not exist\>|int NOT NULL|
|AuditTime|\<did not exist\>|datetime2(7) NOT NULL|
|AuditSubCategoryId|\<did not exist\>|int NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```eProAuditDetails```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|eProAuditDetailsId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|eProAuditId|\<did not exist\>|int NOT NULL|
|eProDataStringId|\<did not exist\>|int NOT NULL|
|SourceLocaleText|\<did not exist\>|nvarchar(MAX) NOT NULL|
|TargetLocaleText|\<did not exist\>|nvarchar(MAX) NOT NULL|
|IsTranslated|\<did not exist\>|bit NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```NeedsCVRefreshValueR```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|NeedsCVRefresh|\<did not exist\>|tinyint NOT NULL|
|NeedsCVRefreshValueName|\<did not exist\>|varchar(100) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```RcmSubjectQueue```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|RcmSubjectQueueID|\<did not exist\>|bigint IDENTITY (1, 1) NOT NULL|
|SubjectUuid|\<did not exist\>|varchar(36) NOT NULL|
|SubjectId|\<did not exist\>|int NOT NULL|
|SourceStudySiteUuid|\<did not exist\>|varchar(36) NOT NULL|
|DestStudySiteUuid|\<did not exist\>|varchar(36) NOT NULL|
|Attempts|\<did not exist\>|int NOT NULL|
|CreatedDate|\<did not exist\>|datetime NOT NULL|
|LastAttemptDate|\<did not exist\>|datetime NOT NULL|
|RequestByUserId|\<did not exist\>|int NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```RcmSubjectQueueLog```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|RcmSubjectQueueLogID|\<did not exist\>|bigint IDENTITY (1, 1) NOT NULL|
|SubjectUuid|\<did not exist\>|varchar(36) NOT NULL|
|SubjectId|\<did not exist\>|int NOT NULL|
|SourceStudySiteUuid|\<did not exist\>|varchar(36) NOT NULL|
|DestStudySiteUuid|\<did not exist\>|varchar(36) NOT NULL|
|CreatedDate|\<did not exist\>|datetime NOT NULL|
|IsSuccess|\<did not exist\>|bit NOT NULL|
|RequestByUserId|\<did not exist\>|int NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TSDV_BlockSubjects_Old```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|SiteBlockSubjectId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|SiteBlockId|\<did not exist\>|int NOT NULL|
|SubjectId|\<did not exist\>|int NOT NULL|
|BlockTierId|\<did not exist\>|int NOT NULL|
|Active|\<did not exist\>|bit NOT NULL|
|OriginalBlockTierId|\<did not exist\>|int NULL|
|LastRetrievedStatusId|\<did not exist\>|int NULL|
|ExcludedStatusId|\<did not exist\>|int NULL|
|OverrideByUserId|\<did not exist\>|int NULL|
|Created|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_BlockSubjects_Created] DEFAULT (getutcdate()) NOT NULL|
|Updated|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_BlockSubjects_Updated] DEFAULT (getutcdate()) NOT NULL|
|OverrideReason|\<did not exist\>|nvarchar(800) NULL|
|RetrospectiveRunDate|\<did not exist\>|datetime NULL|
|IsSubjectReincluded|\<did not exist\>|bit NULL|
|IsBackFillSlotSelected|\<did not exist\>|bit CONSTRAINT [DF__TSDV_Bloc__IsBac__2AEB3533] DEFAULT ((0)) NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TSDV_BlockSubjects2```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|SiteBlockSubjectId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|SiteBlockId|\<did not exist\>|int NOT NULL|
|SubjectId|\<did not exist\>|int NOT NULL|
|BlockId|\<did not exist\>|int NOT NULL|
|TierTypeId|\<did not exist\>|int NOT NULL|
|CustomTierId|\<did not exist\>|int NULL|
|Active|\<did not exist\>|bit NOT NULL|
|OriginalTierTypeId|\<did not exist\>|int NULL|
|OriginalCustomTierId|\<did not exist\>|int NULL|
|IsSubjectReincluded|\<did not exist\>|bit NULL|
|LastRetrievedStatusId|\<did not exist\>|int NULL|
|ExcludedStatusId|\<did not exist\>|int NULL|
|OverrideByUserId|\<did not exist\>|int NULL|
|OverrideReason|\<did not exist\>|nvarchar(800) NULL|
|RetrospectiveRunDate|\<did not exist\>|datetime NULL|
|Created|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_BlockSubjects2_Created] DEFAULT (getutcdate()) NOT NULL|
|Updated|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_BlockSubjects2_Updated] DEFAULT (getutcdate()) NOT NULL|
|IsBackFillSlotSelected|\<did not exist\>|bit CONSTRAINT [DF__TSDV_Bloc__IsBac__34749F6D] DEFAULT ((0)) NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TSDV_SiteBlocks_Old```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|SiteBlockId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|BlockId|\<did not exist\>|int NOT NULL|
|StudySiteId|\<did not exist\>|int NOT NULL|
|LastTierId|\<did not exist\>|int NOT NULL|
|AvailableSlots|\<did not exist\>|int NOT NULL|
|Deleted|\<did not exist\>|bit NOT NULL|
|Created|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_SiteBlocks_Created] DEFAULT (getutcdate()) NOT NULL|
|Updated|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_SiteBlocks_Updated] DEFAULT (getutcdate()) NOT NULL|
|Locked|\<did not exist\>|bit CONSTRAINT [DF__TSDV_Site__Locke__62307D25] DEFAULT ((0)) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TSDV_SiteBlocks2```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|SiteBlockId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|BlockId|\<did not exist\>|int NOT NULL|
|StudySiteId|\<did not exist\>|int NOT NULL|
|LastTierTypeId|\<did not exist\>|int NOT NULL|
|LastCustomTierId|\<did not exist\>|int NULL|
|AvailableSlots|\<did not exist\>|int NOT NULL|
|Deleted|\<did not exist\>|bit NOT NULL|
|Locked|\<did not exist\>|bit CONSTRAINT [DF__TSDV_Site__Locke__2EBBC617] DEFAULT ((0)) NOT NULL|
|Created|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_SiteBlocks2_Created] DEFAULT (getutcdate()) NOT NULL|
|Updated|\<did not exist\>|datetime CONSTRAINT [DF_SSDV_SiteBlocks2_Updated] DEFAULT (getutcdate()) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```env.DbModuleDeployments```
**What changed**: new table
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId|\<did not exist\>|int IDENTITY (1, 1) NOT NULL|
|ModuleName|\<did not exist\>|varchar(100) NOT NULL|
|VersionName|\<did not exist\>|varchar(100) NOT NULL|
|StartedDate|\<did not exist\>|datetime2(7) NOT NULL|
|CompletedDate|\<did not exist\>|datetime2(7) NULL|
|DeploymentStatus|\<did not exist\>|varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----


**Table**: ```TSDV_BlockSubjects```
**What changed**: table deleted
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TSDV_SiteBlocks```
**What changed**: table deleted
**Hash**:\<Fill Hash/PR link here>
----



**Table**: ```ClinicalViewProjectResults```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```CodingDictionaries```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```CodingTermContextHash```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```MigrationRun```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```Projects```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

**Table**: ```TWBProcessingQueue```
**What changed**: new column(s)
**Column(s)**:
|Name|Old Datatype/Properties|New Datatype/Properties|
|:--|:--|:--|
|DbModuleDeploymentId||int IDENTITY (1, 1) NOT NULL|
|ModuleName||varchar(100) NOT NULL|
|VersionName||varchar(100) NOT NULL|
|StartedDate||datetime2(7) NOT NULL|
|CompletedDate||datetime2(7) NULL|
|DeploymentStatus||varchar(25) NOT NULL|
**Hash**:\<Fill Hash/PR link here>
----

