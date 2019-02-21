#!/bin/bash

#card file location --source
CardFileSourceDir=/nfs/mdm-card-output

#archive the current card file dir
archiveDir=$CardFileSourceDir/archive

#check the archive dir exist
if [[ ! -d $archiveDir ]]; then
  mkdir $archiveDir
  chown nfsnobody:nfsnobody $archiveDir
fi

#target card file name
TargetCardFile=TCFCISTO.BD.MOVEITI.MDM.FILE

# date format YYYY_MM_DD
DATE=`date +%Y-%m-%d`

#go to the source dir
cd $archiveDir

#make new dir for backup
mkdir $DATE

#copy source file to destination dir
cp -f $CardFileSourceDir/$TargetCardFile $archiveDir/$DATE

#delete the dir that is older than 7 day
find $archiveDir -type d -ctime +7 -exec rm -rf {} +

exit
KJ5fPhcUUQXl32
