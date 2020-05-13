# cypress_burpsuite

To be done - code below api calls to perform the scan

##### Add the target to scope
```
curl -X PUT --header 'Content-Type: application/json' --header 'Accept: application/json' 'http://localhost:8090/burp/target/scope?url=http://owsapjuiceshopapp.herokuapp.com' -v# Spider the targetcurl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' 'http://localhost:8090/burp/spider?baseUrl=http://owsapjuiceshopapp.herokuapp.com' -v
```

##### Scan the target
```
curl -X POST --header 'Content-Type: application/json' --header 'Accept: */*' 'http://localhost:8090/burp/scanner/scans/active?baseUrl=http://owsapjuiceshopapp.herokuapp.com/rest/user/login' -v
```

##### Get Status of Scan
```
curl -X GET --header 'Accept: application/json' 'http://localhost:8080/burp/scanner/status'
```

##### Create HTML Report
```
curl -X GET --header 'Accept: application/octet-stream' 'http://localhost:8080/burp/report?urlPrefix=http://owsapjuiceshopapp.herokuapp.com/rest/user/login&reportType=HTML' -o testReport.html
```

Issues 
1. https://github.com/vmware/burp-rest-api/issues/95
