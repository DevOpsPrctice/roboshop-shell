source common.sh
component=catalogue
NODEJS

PRINT Install MongoDB client
dnf install mongodb-mongosh -y &>>$LOG_FILE
if [ $? -eq 0 ]; then
  echo SUCCESS
else
  echo FAILURE
fi

PRINT Load Master Data
mongosh --host mongo.dev.vkdevops.online </app/db/master-data.js &>>$LOG_FILE
if [ $? -eq 0 ]; then
  echo SUCCESS
else
  echo FAILURE
fi
