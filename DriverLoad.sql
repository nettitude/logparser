SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS ImageLoaded,
      EXTRACT_TOKEN(Strings,2,'|') AS Hashes,
      EXTRACT_TOKEN(Strings,3,'|') AS Signed,
      EXTRACT_TOKEN(Strings,4,'|') AS Signature   
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=6
