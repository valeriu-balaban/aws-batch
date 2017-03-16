#!/bin/sh

EC2_INSTANCE_ID="`curl http://169.254.169.254/latest/meta-data/instance-id`"
touch $EC2_INSTANCE_ID
aws s3 cp $EC2_INSTANCE_ID s3://batch-instances/
aws ec2 terminate-instances --instance-id $EC2_INSTANCE_ID
