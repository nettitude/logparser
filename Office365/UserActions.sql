/*  Office 365 user actions  */
SELECT 
     RowNumber,
     UserIds,
     Operations,
     EXTRACT_TOKEN(AuditData,3,'"') AS CreateTime,
     EXTRACT_TOKEN(AuditData,7,'"') AS EventID,
     EXTRACT_TOKEN(AuditData,15,'"') AS OrganisationID,
     REPLACE_STR(SUBSTR(EXTRACT_TOKEN(AuditData,18,'"'),1,2),',','') AS RecordType,
     EXTRACT_TOKEN(AuditData,21,'"') AS UserKey,
     SUBSTR(EXTRACT_TOKEN(AuditData,24,'"'),1,1) AS UserType,
     SUBSTR(EXTRACT_TOKEN(AuditData,26,'"'),1,1) AS Version,
     EXTRACT_TOKEN(AuditData,29,'"') AS WorkLoad,
     EXTRACT_TOKEN(AuditData,33,'"') AS ClientIP,
     EXTRACT_TOKEN(AuditData,37,'"') AS ObjectID,
     EXTRACT_TOKEN(AuditData,41,'"') AS UserID,
     EXTRACT_TOKEN(AuditData,45,'"') AS EventSource,
     EXTRACT_TOKEN(AuditData,49,'"') AS ItemType,
     EXTRACT_TOKEN(AuditData,53,'"') AS ListId,
     EXTRACT_TOKEN(AuditData,57,'"') AS ListItemUniqueId,
     EXTRACT_TOKEN(AuditData,61,'"') AS Site,
     EXTRACT_TOKEN(AuditData,65,'"') AS UserAgent,
     EXTRACT_TOKEN(AuditData,69,'"') AS WebId,
     EXTRACT_TOKEN(AuditData,73,'"') AS SourceFileExtension,
     EXTRACT_TOKEN(AuditData,77,'"') AS SiteUrl,
     EXTRACT_TOKEN(AuditData,81,'"') AS SourceFileName
FROM  'C:\AuditLog.csv'
WHERE Operations NOT LIKE 'PasswordLogon%' AND Operations NOT LIKE 'SharingSet' AND Operations NOT LIKE 'UserLoggedIn'