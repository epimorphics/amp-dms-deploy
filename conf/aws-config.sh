# AWS Configuration information

# VPC configuration
readonly SG_BACK_END=sg-b6a5f3d3            # security group for lds-back-end
readonly SG_FRONT_END=sg-61a2f404           # security group for lds-front-end
readonly VPC_PUBLIC_B=subnet-4bf99d2e       # public subnet for LDS VPC
readonly VPC_PUBLIC_C=subnet-5db9352a       # public subnet for LDS VPC
readonly VPC_PUBLIC=( $VPC_PUBLIC_B $VPC_PUBLIC_C )

# Interfaces
readonly ELASTIC_IP="52.16.138.169"
readonly ELASTIC_IP_ALLOC="eipalloc-57aa5232"
readonly MONITOR_NET_IF="eni-76e98f00"

# The automation instance role
readonly AWS_DMS_ROLE="arn:aws:iam::828737851284:instance-profile/dms-automation"

# Location where the configuration state should be preserved
readonly S3_STATE="s3://{prefix}-dms-deploy/dms-state"

# Other AWS defaults
export AWS_DEFAULT_REGION=eu-west-1
readonly AMI_UBUNTU_EBS=ami-cda130ba        # ubuntu 14.04, 64bit, ebs root
readonly AMI_UBUNTU_INSTANCE=ami-3b69b84c   # ubuntu 14.04, 64bit, instance root
readonly AMI_UBUNTU_HVM=ami-c5bf2eb2        # ubuntu 14.04, 64bit, HVM (for use with t2)

readonly PREFIX={prefix}
readonly AWS_DEFAULT_PROFILE=nrw
