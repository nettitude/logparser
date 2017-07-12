SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS ProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS ProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS Image,
      EXTRACT_TOKEN(Strings,4,'|') As TargetFileName,
      EXTRACT_TOKEN(Strings,5,'|') As CreationTimeUTC   
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=11 
