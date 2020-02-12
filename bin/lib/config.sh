# AWS Configuration information

# VPC configuration
readonly SG_BACK_END=sg-0e6801a7d0c920a1d            # security group for dms-backend
readonly SG_FRONT_END=sg-041a5d445577dfd3c           # security group for dms-frontend
readonly SG_CONTROL=sg-020099061cf2f891c             # security group for dms-control

readonly VPC_PUBLIC_B=subnet-0873e7c64222fbe9b       # public subnet for DMS VPC
readonly VPC_PUBLIC_C=subnet-09a6c7b6c628d0806       # public subnet for DMS VPC
readonly VPC_PUBLIC=( $VPC_PUBLIC_B $VPC_PUBLIC_C )

# Interfaces
readonly ELASTIC_IP="54.217.251.145"
readonly ELASTIC_IP_ALLOC="eipalloc-0c38d866e68f52863"
readonly MONITOR_NET_IF="eni-76e98f00"

# The automation instance role
readonly AWS_DMS_ROLE="arn:aws:iam::293385631482:instance-profile/amp-dms-automantion"

# Location where the configuration state should be preserved
readonly S3_BUCKET="s3://amp-dms-deploy"
readonly S3_STATE="$S3_BUCKET/dms-state"

# Other AWS defaults
export AWS_DEFAULT_REGION=eu-west-1
readonly AMI_UBUNTU_EBS=ami-cda130ba        # ubuntu 14.04, 64bit, ebs root
readonly AMI_UBUNTU_INSTANCE=ami-3b69b84c   # ubuntu 14.04, 64bit, instance root
readonly AMI_UBUNTU_HVM=ami-c5bf2eb2        # ubuntu 14.04, 64bit, HVM (for use with t2)

readonly PREFIX=amp
export AWS_DEFAULT_PROFILE=amp

# Nagrestconf location, normally on DMS controller machine
readonly NRC_HOST=127.0.0.1                 

# Suppress SSH known key checking
export SSH_FLAGS="-q -o BatchMode=yes -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

# Location of AWS access key
readonly AWS_KEY=~/.ssh/ec2-expt-general.pem

