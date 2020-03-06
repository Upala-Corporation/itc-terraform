if [ $# -lt 1 ]
then
   echo "USAGE $0 <Valid AWS Region Eg: One of us-east-1,us-east-2,us-west-1,us-west-2>"
   exit 1
fi

# Default entries
echo "127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4"
echo "::1         localhost localhost.localdomain localhost6 localhost6.localdomain6"

# ITC Specific entries
printf "\n########### ITC Hosts ###########\n"
aws ec2 --region $1 describe-instances --query 'Reservations[*].Instances[*].[Tags[0].Value, PrivateIpAddress]' --filters Name=instance-state-name,Values=running  --output text |awk '{print $2"\t"$1}' |sort -k2,2 
