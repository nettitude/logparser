SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS SourceProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS SourceProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS SourceThreadID,
      EXTRACT_TOKEN(Strings,4,'|') As SourceImage,
      EXTRACT_TOKEN(Strings,5,'|') As TargetProcessGUID,
      EXTRACT_TOKEN(Strings,6,'|') AS TargetImageID,
      EXTRACT_TOKEN(Strings,7,'|') AS TargetImage,     
      EXTRACT_TOKEN(Strings,8,'|') AS GrantedAccess, 
      EXTRACT_TOKEN(Strings,9,'|') AS CallTrace
FROM 'Microsoft-Windows-Sysmon/Operational'
WHERE EventID=10
