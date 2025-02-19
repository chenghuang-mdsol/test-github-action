## Summary of RaveDB Database Schema Changes between release/raveedc/2024.2.1 and release/raveedc/2025.1.0
Last updated: 2025-02-18
----

**Table**: ```TSDVComputeSubjectsReadyToAllocateQueue```

**What changed**: new table

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| TaskID || int IDENTITY (1, 1) NOT NULL |
| SubjectID || int NOT NULL |
| StatusID || int CONSTRAINT DF__TSDVCompu__Statu__[generated-hash] ((1)) NOT NULL |
| InsertedOn || datetime2(7) CONSTRAINT DF__TSDVCompu__Inser__[generated-hash] (sysutcdatetime()) NOT NULL |
| LastProcessedON || datetime2(7) NULL |

----

**Table**: ```TSDVSubjectsReadyToAllocate```

**What changed**: new table

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| SubjectID || int NOT NULL |
| AllocationPriorityDate || datetime2(7) NOT NULL |
| Created || datetime2(7) CONSTRAINT DF__TSDVSubje__Creat__[generated-hash] (sysutcdatetime()) NOT NULL |
| Updated || datetime2(7) CONSTRAINT DF__TSDVSubje__Updat__[generated-hash] (sysutcdatetime()) NOT NULL |

----







**Table**: ```Audits```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| ObjectID | int NULL | bigint NULL |

----

**Table**: ```BalanceUnnumberedKits```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| KitPID |  | uniqueidentifier CONSTRAINT DF_BalanceUnnumberedKits_KitPID (newsequentialid()) NULL |
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```BalanceUnnumberedKitsTransactionLogs```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```BK_WR_MCC63497_Datapoints_NO_PURGE```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DatapointID | int NULL | bigint NULL |

----

**Table**: ```BK_WR_NA_MCC_1290713_ReportingLabDataPoints```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |
| ExclRoles | nvarchar(400) NULL | varchar(400) NULL |

----

**Table**: ```ClinicalSignificance```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```CoderDecisions```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```CoderRequestDetailsOld```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| VerbatimDataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```CodingRequests```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```CodingTermContextHash```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```Comments_old```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```CTMSActivities```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```DataPointReviewStatus```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```DataPointRoleStatus```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```DataPoints```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int IDENTITY (1, 1) NOT NULL | bigint IDENTITY (1, 1) NOT NULL |

----

**Table**: ```DataPointsDDE```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```DataPointUntranslated```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```DDEQueryComments```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```ElectronicSignatures```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```EventQueues```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| ObjectId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```EventQueuesObjects```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| ObjectId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```Markings```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```MigrationIssues```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NULL | bigint NULL |

----

**Table**: ```MigrationRun```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| OverwriteLocalLabRanges |  | bit NULL |

----

**Table**: ```ODMV2LoadStatus```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| LastAuditStudiesLoadBatchCompletedTime |  | datetime NULL |

----

**Table**: ```ProtocolDeviations_old```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```Queries_old```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```ReportingLabDataPoints```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |
| ExclRoles | nvarchar(400) NULL | varchar(400) NULL |

----

**Table**: ```ReportingLabDPDeletes```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointId | int NOT NULL | bigint NOT NULL |

----

**Table**: ```ReportingRecords```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| ExclRoles | nvarchar(400) NULL | varchar(400) NULL |
| c1_dpid | int NULL | bigint NULL |
| c2_dpid | int NULL | bigint NULL |
| c3_dpid | int NULL | bigint NULL |
| c4_dpid | int NULL | bigint NULL |
| c5_dpid | int NULL | bigint NULL |
| c6_dpid | int NULL | bigint NULL |
| c7_dpid | int NULL | bigint NULL |
| c8_dpid | int NULL | bigint NULL |
| c9_dpid | int NULL | bigint NULL |
| c10_dpid | int NULL | bigint NULL |
| c11_dpid | int NULL | bigint NULL |
| c12_dpid | int NULL | bigint NULL |
| c13_dpid | int NULL | bigint NULL |
| c14_dpid | int NULL | bigint NULL |
| c15_dpid | int NULL | bigint NULL |
| c16_dpid | int NULL | bigint NULL |
| c17_dpid | int NULL | bigint NULL |
| c18_dpid | int NULL | bigint NULL |
| c19_dpid | int NULL | bigint NULL |
| c20_dpid | int NULL | bigint NULL |
| c21_dpid | int NULL | bigint NULL |
| c22_dpid | int NULL | bigint NULL |
| c23_dpid | int NULL | bigint NULL |
| c24_dpid | int NULL | bigint NULL |
| c25_dpid | int NULL | bigint NULL |
| c26_dpid | int NULL | bigint NULL |
| c27_dpid | int NULL | bigint NULL |
| c28_dpid | int NULL | bigint NULL |
| c29_dpid | int NULL | bigint NULL |
| c31_dpid | int NULL | bigint NULL |
| c32_dpid | int NULL | bigint NULL |
| c33_dpid | int NULL | bigint NULL |
| c34_dpid | int NULL | bigint NULL |
| c35_dpid | int NULL | bigint NULL |
| c36_dpid | int NULL | bigint NULL |
| c37_dpid | int NULL | bigint NULL |
| c38_dpid | int NULL | bigint NULL |
| c39_dpid | int NULL | bigint NULL |
| c41_dpid | int NULL | bigint NULL |
| c42_dpid | int NULL | bigint NULL |
| c43_dpid | int NULL | bigint NULL |
| c44_dpid | int NULL | bigint NULL |
| c45_dpid | int NULL | bigint NULL |
| c46_dpid | int NULL | bigint NULL |
| c47_dpid | int NULL | bigint NULL |
| c48_dpid | int NULL | bigint NULL |
| c49_dpid | int NULL | bigint NULL |
| c51_dpid | int NULL | bigint NULL |
| c52_dpid | int NULL | bigint NULL |
| c53_dpid | int NULL | bigint NULL |
| c54_dpid | int NULL | bigint NULL |
| c55_dpid | int NULL | bigint NULL |
| c56_dpid | int NULL | bigint NULL |
| c57_dpid | int NULL | bigint NULL |
| c58_dpid | int NULL | bigint NULL |
| c59_dpid | int NULL | bigint NULL |
| c61_dpid | int NULL | bigint NULL |
| c62_dpid | int NULL | bigint NULL |
| c63_dpid | int NULL | bigint NULL |
| c64_dpid | int NULL | bigint NULL |
| c65_dpid | int NULL | bigint NULL |
| c66_dpid | int NULL | bigint NULL |
| c67_dpid | int NULL | bigint NULL |
| c68_dpid | int NULL | bigint NULL |
| c69_dpid | int NULL | bigint NULL |
| c71_dpid | int NULL | bigint NULL |
| c72_dpid | int NULL | bigint NULL |
| c73_dpid | int NULL | bigint NULL |
| c74_dpid | int NULL | bigint NULL |
| c75_dpid | int NULL | bigint NULL |
| c76_dpid | int NULL | bigint NULL |
| c77_dpid | int NULL | bigint NULL |
| c78_dpid | int NULL | bigint NULL |
| c79_dpid | int NULL | bigint NULL |
| c81_dpid | int NULL | bigint NULL |
| c82_dpid | int NULL | bigint NULL |
| c83_dpid | int NULL | bigint NULL |
| c84_dpid | int NULL | bigint NULL |
| c85_dpid | int NULL | bigint NULL |
| c86_dpid | int NULL | bigint NULL |
| c87_dpid | int NULL | bigint NULL |
| c88_dpid | int NULL | bigint NULL |
| c89_dpid | int NULL | bigint NULL |
| c91_dpid | int NULL | bigint NULL |
| c92_dpid | int NULL | bigint NULL |
| c93_dpid | int NULL | bigint NULL |
| c94_dpid | int NULL | bigint NULL |
| c95_dpid | int NULL | bigint NULL |
| c96_dpid | int NULL | bigint NULL |
| c97_dpid | int NULL | bigint NULL |
| c98_dpid | int NULL | bigint NULL |
| c99_dpid | int NULL | bigint NULL |
| c100_dpid | int NULL | bigint NULL |
| C101_dpid | int NULL | bigint NULL |
| C102_dpid | int NULL | bigint NULL |
| C103_dpid | int NULL | bigint NULL |
| C104_dpid | int NULL | bigint NULL |
| C105_dpid | int NULL | bigint NULL |
| C106_dpid | int NULL | bigint NULL |
| C107_dpid | int NULL | bigint NULL |
| C108_dpid | int NULL | bigint NULL |
| C109_dpid | int NULL | bigint NULL |
| C110_dpid | int NULL | bigint NULL |
| C111_dpid | int NULL | bigint NULL |
| C112_dpid | int NULL | bigint NULL |
| C113_dpid | int NULL | bigint NULL |
| C114_dpid | int NULL | bigint NULL |
| C115_dpid | int NULL | bigint NULL |
| C116_dpid | int NULL | bigint NULL |
| C117_dpid | int NULL | bigint NULL |
| C118_dpid | int NULL | bigint NULL |
| C119_dpid | int NULL | bigint NULL |
| C120_dpid | int NULL | bigint NULL |
| C121_dpid | int NULL | bigint NULL |
| C122_dpid | int NULL | bigint NULL |
| C123_dpid | int NULL | bigint NULL |
| C124_dpid | int NULL | bigint NULL |
| C125_dpid | int NULL | bigint NULL |
| C126_dpid | int NULL | bigint NULL |
| C127_dpid | int NULL | bigint NULL |
| C128_dpid | int NULL | bigint NULL |
| C129_dpid | int NULL | bigint NULL |
| C131_dpid | int NULL | bigint NULL |
| C132_dpid | int NULL | bigint NULL |
| C133_dpid | int NULL | bigint NULL |
| C134_dpid | int NULL | bigint NULL |
| C135_dpid | int NULL | bigint NULL |
| C136_dpid | int NULL | bigint NULL |
| C137_dpid | int NULL | bigint NULL |
| C138_dpid | int NULL | bigint NULL |
| C139_dpid | int NULL | bigint NULL |
| C141_dpid | int NULL | bigint NULL |
| C142_dpid | int NULL | bigint NULL |
| C143_dpid | int NULL | bigint NULL |
| C144_dpid | int NULL | bigint NULL |
| c30_dpid | int NULL | bigint NULL |
| c40_dpid | int NULL | bigint NULL |
| c50_dpid | int NULL | bigint NULL |
| c60_dpid | int NULL | bigint NULL |
| c70_dpid | int NULL | bigint NULL |
| c80_dpid | int NULL | bigint NULL |
| c90_dpid | int NULL | bigint NULL |
| c130_dpid | int NULL | bigint NULL |
| c140_dpid | int NULL | bigint NULL |

----

**Table**: ```ReportingRecordsExt2```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| c1_dpid | int NULL | bigint NULL |
| c2_dpid | int NULL | bigint NULL |
| c3_dpid | int NULL | bigint NULL |
| c4_dpid | int NULL | bigint NULL |
| c5_dpid | int NULL | bigint NULL |
| c6_dpid | int NULL | bigint NULL |
| c7_dpid | int NULL | bigint NULL |
| c8_dpid | int NULL | bigint NULL |
| c9_dpid | int NULL | bigint NULL |
| c10_dpid | int NULL | bigint NULL |
| c11_dpid | int NULL | bigint NULL |
| c12_dpid | int NULL | bigint NULL |
| c13_dpid | int NULL | bigint NULL |
| c14_dpid | int NULL | bigint NULL |
| c15_dpid | int NULL | bigint NULL |
| c16_dpid | int NULL | bigint NULL |
| c17_dpid | int NULL | bigint NULL |
| c18_dpid | int NULL | bigint NULL |
| c19_dpid | int NULL | bigint NULL |
| c20_dpid | int NULL | bigint NULL |
| c21_dpid | int NULL | bigint NULL |
| c22_dpid | int NULL | bigint NULL |
| c23_dpid | int NULL | bigint NULL |
| c24_dpid | int NULL | bigint NULL |
| c25_dpid | int NULL | bigint NULL |
| c26_dpid | int NULL | bigint NULL |
| c27_dpid | int NULL | bigint NULL |
| c28_dpid | int NULL | bigint NULL |
| c29_dpid | int NULL | bigint NULL |
| c31_dpid | int NULL | bigint NULL |
| c32_dpid | int NULL | bigint NULL |
| c33_dpid | int NULL | bigint NULL |
| c34_dpid | int NULL | bigint NULL |
| c35_dpid | int NULL | bigint NULL |
| c36_dpid | int NULL | bigint NULL |
| c37_dpid | int NULL | bigint NULL |
| c38_dpid | int NULL | bigint NULL |
| c39_dpid | int NULL | bigint NULL |
| c41_dpid | int NULL | bigint NULL |
| c42_dpid | int NULL | bigint NULL |
| c43_dpid | int NULL | bigint NULL |
| c44_dpid | int NULL | bigint NULL |
| c45_dpid | int NULL | bigint NULL |
| c46_dpid | int NULL | bigint NULL |
| c47_dpid | int NULL | bigint NULL |
| c48_dpid | int NULL | bigint NULL |
| c49_dpid | int NULL | bigint NULL |
| c51_dpid | int NULL | bigint NULL |
| c52_dpid | int NULL | bigint NULL |
| c53_dpid | int NULL | bigint NULL |
| c54_dpid | int NULL | bigint NULL |
| c55_dpid | int NULL | bigint NULL |
| c56_dpid | int NULL | bigint NULL |
| c57_dpid | int NULL | bigint NULL |
| c58_dpid | int NULL | bigint NULL |
| c59_dpid | int NULL | bigint NULL |
| c61_dpid | int NULL | bigint NULL |
| c62_dpid | int NULL | bigint NULL |
| c63_dpid | int NULL | bigint NULL |
| c64_dpid | int NULL | bigint NULL |
| c65_dpid | int NULL | bigint NULL |
| c66_dpid | int NULL | bigint NULL |
| c67_dpid | int NULL | bigint NULL |
| c68_dpid | int NULL | bigint NULL |
| c69_dpid | int NULL | bigint NULL |
| c71_dpid | int NULL | bigint NULL |
| c72_dpid | int NULL | bigint NULL |
| c73_dpid | int NULL | bigint NULL |
| c74_dpid | int NULL | bigint NULL |
| c75_dpid | int NULL | bigint NULL |
| c76_dpid | int NULL | bigint NULL |
| c77_dpid | int NULL | bigint NULL |
| c78_dpid | int NULL | bigint NULL |
| c79_dpid | int NULL | bigint NULL |
| c81_dpid | int NULL | bigint NULL |
| c82_dpid | int NULL | bigint NULL |
| c83_dpid | int NULL | bigint NULL |
| c84_dpid | int NULL | bigint NULL |
| c85_dpid | int NULL | bigint NULL |
| c86_dpid | int NULL | bigint NULL |
| c87_dpid | int NULL | bigint NULL |
| c88_dpid | int NULL | bigint NULL |
| c89_dpid | int NULL | bigint NULL |
| c91_dpid | int NULL | bigint NULL |
| c92_dpid | int NULL | bigint NULL |
| c93_dpid | int NULL | bigint NULL |
| c94_dpid | int NULL | bigint NULL |
| c95_dpid | int NULL | bigint NULL |
| c96_dpid | int NULL | bigint NULL |
| c97_dpid | int NULL | bigint NULL |
| c98_dpid | int NULL | bigint NULL |
| c99_dpid | int NULL | bigint NULL |
| c100_dpid | int NULL | bigint NULL |
| C101_dpid | int NULL | bigint NULL |
| C102_dpid | int NULL | bigint NULL |
| C103_dpid | int NULL | bigint NULL |
| C104_dpid | int NULL | bigint NULL |
| C105_dpid | int NULL | bigint NULL |
| C106_dpid | int NULL | bigint NULL |
| C107_dpid | int NULL | bigint NULL |
| C108_dpid | int NULL | bigint NULL |
| C109_dpid | int NULL | bigint NULL |
| C110_dpid | int NULL | bigint NULL |
| C111_dpid | int NULL | bigint NULL |
| C112_dpid | int NULL | bigint NULL |
| C113_dpid | int NULL | bigint NULL |
| C114_dpid | int NULL | bigint NULL |
| C115_dpid | int NULL | bigint NULL |
| C116_dpid | int NULL | bigint NULL |
| C117_dpid | int NULL | bigint NULL |
| C118_dpid | int NULL | bigint NULL |
| C119_dpid | int NULL | bigint NULL |
| C120_dpid | int NULL | bigint NULL |
| C121_dpid | int NULL | bigint NULL |
| C122_dpid | int NULL | bigint NULL |
| C123_dpid | int NULL | bigint NULL |
| C124_dpid | int NULL | bigint NULL |
| C125_dpid | int NULL | bigint NULL |
| C126_dpid | int NULL | bigint NULL |
| C127_dpid | int NULL | bigint NULL |
| C128_dpid | int NULL | bigint NULL |
| C129_dpid | int NULL | bigint NULL |
| C131_dpid | int NULL | bigint NULL |
| C132_dpid | int NULL | bigint NULL |
| C133_dpid | int NULL | bigint NULL |
| C134_dpid | int NULL | bigint NULL |
| C135_dpid | int NULL | bigint NULL |
| C136_dpid | int NULL | bigint NULL |
| C137_dpid | int NULL | bigint NULL |
| C138_dpid | int NULL | bigint NULL |
| C139_dpid | int NULL | bigint NULL |
| C141_dpid | int NULL | bigint NULL |
| C142_dpid | int NULL | bigint NULL |
| C143_dpid | int NULL | bigint NULL |
| C144_dpid | int NULL | bigint NULL |
| c30_dpid | int NULL | bigint NULL |
| c40_dpid | int NULL | bigint NULL |
| c50_dpid | int NULL | bigint NULL |
| c60_dpid | int NULL | bigint NULL |
| c70_dpid | int NULL | bigint NULL |
| c80_dpid | int NULL | bigint NULL |
| c90_dpid | int NULL | bigint NULL |
| c130_dpid | int NULL | bigint NULL |
| c140_dpid | int NULL | bigint NULL |

----

**Table**: ```Signatures```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| ObjectID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```StatusProgressLogs```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NULL | bigint NULL |

----

**Table**: ```Stickies_old```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int NOT NULL | bigint NOT NULL |

----

**Table**: ```TsdvRunRetrospectiveQueue```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| RunReason |  | varchar(500) CONSTRAINT DF__TsdvRunRe__RunRe__[generated-hash] ('') NOT NULL |

----

**Table**: ```UploadDataPoints```

**What changed**: updated column(s)

**Column(s)**:

| Name | Old Datatype/Properties | New Datatype/Properties |
|:--|:--|:--|
| DataPointID | int CONSTRAINT DF_UploadDataPoints_DataPointID ((0)) NOT NULL | bigint CONSTRAINT DF_UploadDataPoints_DataPointID ((0)) NOT NULL |

----

