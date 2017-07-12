SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS ProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS ProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS Image,
      EXTRACT_TOKEN(Strings,4,'|') As ImageLoaded,
      EXTRACT_TOKEN(Strings,5,'|') As Hashes,
      EXTRACT_TOKEN(Strings,6,'|') As Signed,
      EXTRACT_TOKEN(Strings,7,'|') As Signature   
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=7 
