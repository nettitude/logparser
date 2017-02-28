SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS ProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS ProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS Image,
      EXTRACT_TOKEN(Strings,4,'|') As CommandLine,
      EXTRACT_TOKEN(Strings,5,'|') As CurrentDirectory,
      EXTRACT_TOKEN(Strings,6,'|') AS User,
      EXTRACT_TOKEN(Strings,7,'|') AS LogonGUID,     
      EXTRACT_TOKEN(Strings,8,'|') AS LogonID, 
      EXTRACT_TOKEN(Strings,9,'|') AS TerminalSession,
      EXTRACT_TOKEN(Strings,10,'|') AS IntegrityLevel,
      EXTRACT_TOKEN(Strings,11,'|') AS Hashes,
      EXTRACT_TOKEN(Strings,12,'|') As ParentProcessGUID,
      EXTRACT_TOKEN(Strings,13,'|') As ParentProcessID,
      EXTRACT_TOKEN(Strings,14,'|') AS ParentImage,
      EXTRACT_TOKEN(Strings,15,'|') AS ParentCommandLine
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=1
