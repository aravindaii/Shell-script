userid=$(id -u)
if [ $? -ne 0 ]
then
	echo "Error, please execute with sudo privilages"	
	exit 1
fi

validate()
{
if [ $1 -ne 0]
then
	echo "Installation if failure"
	exit 1
else
	echo "Installation is success"
fi
}

yum install mysql -y
validate $? "MySql"

yum install postfix -y
validate $? "Postfix"
