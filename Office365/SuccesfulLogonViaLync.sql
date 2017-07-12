/*  Office 365 succesful logon via Lync  */
SELECT 
     RowNumber,
     UserIds,
     Operations,
     EXTRACT_TOKEN(AuditData,3,'"') AS CreateTime,
     EXTRACT_TOKEN(AuditData,7,'"') AS EventID,
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
     SUBSTR(EXTRACT_TOKEN(AuditData,48,'"'),1,1) AS ActiveDirectoryEventType,
     EXTRACT_TOKEN(AuditData,51,'"') AS Application,
     EXTRACT_TOKEN(AuditData,55,'"') AS Client,
     REPLACE_STR(SUBSTR(EXTRACT_TOKEN(AuditData,58,'"'),1,2),',','') AS LoginStatus,
     EXTRACT_TOKEN(AuditData,61,'"') AS UserDomain
FROM  'C:\AuditLog.csv'
WHERE Operations LIKE 'PasswordLogon%' AND AuditData LIKE '%success%' AND AuditData LIKE '%Lync%'