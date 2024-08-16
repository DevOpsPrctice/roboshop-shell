source common.sh
component=catalogue
NODEJS

PRINT Install MongoDB client
dnf install mongodb-mongosh -y &>>$LOG_FILE

PRINT Load Master Data
mongosh --host mongo.dev.vkdevops.online </app/db/master-data.js &>>$LOG_FILE
