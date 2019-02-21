kubectl exec -ti <pod> -- bash
curl --request POST \
  --url http://localhost:8080/api/rcif/rffl06 \
  --header 'content-type: application/json' \
  --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl06.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl09 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl06.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl10 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl10.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl13 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl13.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl18 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl18.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl25 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl25.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl33 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl33.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl34 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "C:\\Users\\t277515\\Desktop\\TEST_DATA_500K\\RCIF\\Rffl34.csv", "recordLimit": -1, "useCsvParser": true, "batchId": 8675309 }'


curl --request POST \
  --url http://localhost:8080/api/rcif/aggregate \
  --header 'content-type: application/json' \
  --data '{ "batchId": 8675309 }'
