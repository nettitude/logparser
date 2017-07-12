/*  Office 365 User Logged In  */
SELECT 
     RowNumber,
     UserIds,
     Operations,
     EXTRACT_TOKEN(AuditData,3,'"') AS CreateTime,
     EXTRACT_TOKEN(AuditData,7,'"') AS Id,
     EXTRACT_TOKEN(AuditData,15,'"') AS OrganisationID,
     REPLACE_STR(SUBSTR(EXTRACT_TOKEN(AuditData,18,'"'),1,2),',','') AS RecordType,
     EXTRACT_TOKEN(AuditData,21,'"') AS ResultStatus,
     EXTRACT_TOKEN(AuditData,25,'"') AS UserKey,
     SUBSTR(EXTRACT_TOKEN(AuditData,28,'"'),1,1) AS UserType,
     SUBSTR(EXTRACT_TOKEN(AuditData,30,'"'),1,1) AS Version,
     EXTRACT_TOKEN(AuditData,33,'"') AS WorkLoad,
     EXTRACT_TOKEN(AuditData,37,'"') AS ClientIP,
     EXTRACT_TOKEN(AuditData,41,'"') AS ObjectID,
     EXTRACT_TOKEN(AuditData,45,'"') AS UserID,
     EXTRACT_TOKEN(EXTRACT_TOKEN(AuditData,1,'['),0,']') AS ExtendedProperties,
     EXTRACT_TOKEN(EXTRACT_TOKEN(AuditData,2,'['),0,']') AS Actor,
     EXTRACT_TOKEN(AuditData,113,'"') AS ActorContextId,
     EXTRACT_TOKEN(AuditData,117,'"') AS ActorIpAddress,
     EXTRACT_TOKEN(AuditData,121,'"') AS InterSystemsId,
     EXTRACT_TOKEN(AuditData,125,'"') AS IntraSystemsId,
     EXTRACT_TOKEN(EXTRACT_TOKEN(AuditData,3,'['),0,']') AS Target,
     EXTRACT_TOKEN(AuditData,137,'"') AS TargetContextID,
     EXTRACT_TOKEN(AuditData,141,'"') AS ApplicationID
FROM  'C:\AuditLog.csv'
WHERE Operations LIKE 'UserLoggedIn'