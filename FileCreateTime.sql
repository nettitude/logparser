SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS SourceProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS SourceProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS Image,
      EXTRACT_TOKEN(Strings,4,'|') As TargetFileName,
      EXTRACT_TOKEN(Strings,5,'|') As CreationTimeUTC,
      EXTRACT_TOKEN(Strings,6,'|') AS PreviousCreationTimeUTC    
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=2 
