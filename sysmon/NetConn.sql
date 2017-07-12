SELECT      
      TimeGenerated,
      EventID,
      EXTRACT_TOKEN(Strings,1,'|') AS ProcessGUID,
      EXTRACT_TOKEN(Strings,2,'|') AS ProcessID,
      EXTRACT_TOKEN(Strings,3,'|') AS Image,
      EXTRACT_TOKEN(Strings,4,'|') As User,
      EXTRACT_TOKEN(Strings,5,'|') As Protocal,
      EXTRACT_TOKEN(Strings,6,'|') AS Initiated,
      EXTRACT_TOKEN(Strings,7,'|') AS SourceIsIPV6,     
      EXTRACT_TOKEN(Strings,8,'|') AS SourceIP, 
      EXTRACT_TOKEN(Strings,9,'|') AS SourceHostname,
      EXTRACT_TOKEN(Strings,10,'|') AS SourcePort,
      EXTRACT_TOKEN(Strings,11,'|') AS SourcePortName,
      EXTRACT_TOKEN(Strings,12,'|') As DestinationIsIPV6,
      EXTRACT_TOKEN(Strings,13,'|') As DestinationIP,
      EXTRACT_TOKEN(Strings,14,'|') AS HistoricDestinationHostname,
      REVERSEDNS(EXTRACT_TOKEN(Strings,13,'|')) AS CurrentDestinationHostname,
      EXTRACT_TOKEN(Strings,15,'|') AS DestinationPort,
      EXTRACT_TOKEN(Strings,16,'|') AS DestinationPortName
FROM 'Microsoft-Windows-Sysmon/Operational' 
WHERE EventID=3
