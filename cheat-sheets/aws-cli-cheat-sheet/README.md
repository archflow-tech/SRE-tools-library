# AWS-cli-cheat-sheet
 
### Compute Services
| Command | Description |
|---------|-------------|
| `aws ec2 describe-instances` | Retrieves information about one or more EC2 instances. |
| `aws ec2 start-instances` | Starts one or more stopped EC2 instances. |
| `aws ec2 stop-instances` | Stops one or more running EC2 instances. |
| `aws ec2 terminate-instances` | Terminates one or more EC2 instances. |
| `aws ecs list-clusters` | Lists the ECS clusters in your account. |
| `aws ecs describe-services` | Describes one or more ECS services. |
| `aws lambda create-function` | Creates a new AWS Lambda function. |
| `aws lambda list-functions` | Lists the AWS Lambda functions in your account. |

### Networking Services
| Command | Description |
|---------|-------------|
| `aws vpc describe-vpcs` | Describes the Amazon VPCs in your account. |
| `aws vpc create-subnet` | Creates a new subnet within an Amazon VPC. |
| `aws elbv2 create-load-balancer` | Creates a new Application Load Balancer. |
| `aws elbv2 describe-load-balancers` | Describes one or more Application Load Balancers. |
| `aws route53 list-hosted-zones` | Lists the hosted zones in your Route 53 account. |
| `aws route53 change-resource-record-sets` | Creates, updates, or deletes a record set within a hosted zone. |

### Storage Services
| Command | Description |
|---------|-------------|
| `aws s3 ls` | Lists all S3 buckets in your account. |
| `aws s3 cp` | Copies files and objects to/from S3 buckets. |
| `aws s3 sync` | Syncs directories and S3 buckets recursively. |
| `aws s3api put-bucket-policy` | Sets the access policy for an S3 bucket. |
| `aws ebs create-snapshot` | Creates a snapshot of an Amazon EBS volume. |
| `aws ebs describe-snapshots` | Describes one or more Amazon EBS snapshots. |

### Database Services
| Command | Description |
|---------|-------------|
| `aws rds create-db-instance` | Creates a new RDS database instance. |
| `aws rds describe-db-instances` | Describes one or more RDS database instances. |
| `aws dynamodb create-table` | Creates a new DynamoDB table. |
| `aws dynamodb describe-table` | Describes a DynamoDB table. |
| `aws redshift create-cluster` | Creates a new Amazon Redshift cluster. |
| `aws redshift describe-clusters` | Describes one or more Amazon Redshift clusters. |

### Identity and Access Management (IAM)
| Command | Description |
|---------|-------------|
| `aws iam create-user` | Creates a new IAM user. |
| `aws iam list-users` | Lists all IAM users in your account. |
| `aws iam create-group` | Creates a new IAM group. |
| `aws iam list-groups` | Lists all IAM groups in your account. |
| `aws iam create-policy` | Creates a new IAM policy. |
| `aws iam list-policies` | Lists all IAM policies in your account. |
| `aws iam attach-user-policy` | Attaches an IAM policy to a user. |
| `aws iam attach-group-policy` | Attaches an IAM policy to a group. |
| `aws iam attach-role-policy` | Attaches an IAM policy to a role. |
| `aws iam create-role` | Creates a new IAM role. |
| `aws iam list-roles` | Lists all IAM roles in your account. |
| `aws iam create-instance-profile` | Creates a new IAM instance profile. |
| `aws iam list-instance-profiles` | Lists all IAM instance profiles in your account. |

### Management and Governance
| Command | Description |
|---------|-------------|
| `aws cloudwatch put-metric-data` | Publishes data points to CloudWatch metrics. |
| `aws cloudwatch describe-alarms` | Describes one or more CloudWatch alarms. |
| `aws cloudformation create-stack` | Creates a new CloudFormation stack. |
| `aws cloudformation describe-stacks` | Describes one or more CloudFormation stacks. |
| `aws configservice describe-configuration-recorders` | Describes the configuration recorders in your account. |
| `aws configservice describe-compliance-by-resource` | Describes the compliance status for a resource. |
| `aws opsworks create-stack` | Creates a new OpsWorks stack. |
| `aws opsworks describe-stacks` | Describes one or more OpsWorks stacks. |

### Security and Compliance
| Command | Description |
|---------|-------------|
| `aws guardduty list-detectors` | Lists all Amazon GuardDuty detectors in your account. |
| `aws guardduty create-filter` | Creates a new filter for Amazon GuardDuty. |
| `aws inspector list-assessment-targets` | Lists all assessment targets in Amazon Inspector. |
| `aws inspector create-assessment-target` | Creates a new assessment target in Amazon Inspector. |
| `aws macie2 list-classification-jobs` | Lists all Amazon Macie classification jobs. |
| `aws macie2 start-classification-job` | Initiates a classification job in Amazon Macie. |
| `aws secretsmanager create-secret` | Creates a new secret in AWS Secrets Manager. |
| `aws secretsmanager get-secret-value` | Retrieves the value of a secret from AWS Secrets Manager. |
| `aws wafv2 create-web-acl` | Creates a new web ACL in AWS WAF. |
| `aws wafv2 list-web-acls` | Lists all web ACLs in AWS WAF.

### Analytics and Big Data
| Command | Description |
|---------|-------------|
| `aws athena start-query-execution` | Runs a query on data stored in Amazon Athena. |
| `aws athena get-query-results` | Retrieves the results of a query from Amazon Athena. |
| `aws kinesis create-stream` | Creates a new Kinesis data stream. |
| `aws kinesis describe-stream` | Describes a Kinesis data stream. |
| `aws glue create-job` | Creates a new AWS Glue job. |
| `aws glue get-job-runs` | Retrieves information about job runs in AWS Glue. |
| `aws emr create-cluster` | Creates a new Amazon EMR cluster. |
| `aws emr describe-cluster` | Describes an Amazon EMR cluster. |
| `aws quicksight create-dashboard` | Creates a new dashboard in Amazon QuickSight. |
| `aws quicksight describe-dashboard` | Describes a dashboard in Amazon QuickSight. |

### Developer Tools
| Command | Description |
|---------|-------------|
| `aws codecommit create-repository` | Creates a new CodeCommit repository. |
| `aws codecommit list-repositories` | Lists all CodeCommit repositories in your account. |
| `aws codebuild create-project` | Creates a new CodeBuild project. |
| `aws codebuild list-projects` | Lists all CodeBuild projects in your account. |
| `aws codedeploy create-application` | Creates a new CodeDeploy application. |
| `aws codedeploy list-applications` | Lists all CodeDeploy applications in your account. |
| `aws codepipeline create-pipeline` | Creates a new CodePipeline pipeline. |
| `aws codepipeline list-pipelines` | Lists all CodePipeline pipelines in your account. |
| `aws cloud9 create-environment-ec2` | Creates a new AWS Cloud9 development environment. |
| `aws cloud9 list-environments` | Lists all AWS Cloud9 development environments in your account. |

These additional commands cover various AWS services and functionalities. Remember to refer to the official AWS CLI documentation for detailed explanations and additional commands: [AWS CLI Command Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html)
