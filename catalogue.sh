source common.sh
component=catalogue
NODEJS

echo Install MongoDB client
dnf install mongodb-mongosh -y &>>$LOG_FILE

echo Load Master Data
mongosh --host mongo.dev.vkdevops.online </app/db/master-data.js &>>$LOG_FILE
