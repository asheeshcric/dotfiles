#!/bin/bash
export MYSQL_PASS="mysql_password_here"
export DATE=`date +%Y-%m-%d`
ssh -i "aws_pem_file.pem" host-endpoint.com << EOF
printf "\nExtracting dump on the server\n"
export MYSQL_PASS="mysql_password_here"
export DATE=`date +%Y-%m-%d`
if [ $MYSQL_PASS ]
then
  printf "\nExtracting dump from RDS database...\n"
  mysqldump -h RDS-endpoint -u db_user_name -p"$MYSQL_PASS" db_name > "$DATE".sql
else
  printf "\nNo password entered\n"
fi
printf "\nZipping file before downloading...\n"
zip "$DATE".zip "$DATE".sql
echo
ls -l --block-size=M
EOF

printf "\nDownloading the temporary dumped file and deleting it...\n"

scp -i aws_pem_file endpoint:/home/ubuntu/"$DATE".zip /home/asheesh/Desktop/"$DATE".zip


# Remove sql dump file from the server after download
ssh -i "aws_pem_file.pem" host-endpoint.com << EOF
rm "$DATE".sql
rm "$DATE".zip
EOF