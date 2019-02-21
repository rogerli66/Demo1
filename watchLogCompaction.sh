#!/bin/bash

homeDir=/opt/kafka
dataKafkaDir=$homeDir/data/kafka
kafkaLogs=$homeDir/logs

brokerName=test-customer-command-log-0
logFileName=mdmFeature_logCompaction.txt

cd $homeDir

while [ true ]
do
        sleep 30
        Now=$(date +"%T_%m-%d-%Y")
        echo "$Now running" >> $kafkaLogs/$logFileName
        du -s --time $dataKafkaDir/$brokerName >> $kafkaLogs/$logFileName

        echo >> $kafkaLogs/$logFileName
        echo running env  at $Now

done


