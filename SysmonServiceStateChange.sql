SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,0,'|') AS SequenceNumber,
      EXTRACT_TOKEN(Strings,1,'|') AS State
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=4 
