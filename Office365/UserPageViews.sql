/*  Office 365 User Page Views  */
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
     EXTRACT_TOKEN(AuditData,44,'"') AS CustomUniqueId,
     EXTRACT_TOKEN(AuditData,47,'"') AS EventSource,
     EXTRACT_TOKEN(AuditData,51,'"') AS ItemType,
     EXTRACT_TOKEN(AuditData,55,'"') AS ListId,
     EXTRACT_TOKEN(AuditData,59,'"') AS ListItemUniqueId,
     EXTRACT_TOKEN(AuditData,63,'"') AS Site,
     EXTRACT_TOKEN(AuditData,67,'"') AS UserAgent,
     EXTRACT_TOKEN(AuditData,71,'"') AS WebId
FROM  'C:\AuditLog.csv'
WHERE Operations LIKE 'PageViewed'