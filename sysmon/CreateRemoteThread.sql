SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS SourceProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS SourceProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS SourceImage,
      EXTRACT_TOKEN(Strings,4,'|') As TargetProcessGUID,
      EXTRACT_TOKEN(Strings,5,'|') As TargetProcessID,
      EXTRACT_TOKEN(Strings,6,'|') AS TargetImage,
      EXTRACT_TOKEN(Strings,7,'|') AS NewThreadID,     
      EXTRACT_TOKEN(Strings,8,'|') AS StartAddress, 
      EXTRACT_TOKEN(Strings,9,'|') AS StartModule,
      EXTRACT_TOKEN(Strings,10,'|') AS StartFunction
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=8
