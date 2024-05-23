dnf module disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
cp ./sample-backend.conf /etc/systemd/system/backend.service
useradd expense
mkdir /app 
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip 
cd /app 
unzip /tmp/backend.zip
npm install
systemctl enable backend 
systemctl start backend
systemctl daemon-reload
ls
dnf install mysql -y 
mysql -h 172.31.29.127 -uroot -pExpenseApp@1 < /app/schema/backend.sql 
systemctl restart backend

