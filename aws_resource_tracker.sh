#!/bin/bash

##################################
# Author:Murugesh BV
# Date : 19th April
# Version :v1
#
# This script will report the AWS resource usage
##################################


set -x
#aws S3
#aws EC2
#aws lambda
#aws IAM Users

# list s3 buckets
echo "Print list of S3 buckets"
aws s3 ls

#list EC2 instances
echo "Print list of EC2 instances "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda fucntions
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "Print list of iam  users"
aws iam list-users
