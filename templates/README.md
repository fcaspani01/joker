# Joker Environment - Cloud Formation template

## AWS Services
1. VPC
2. EC2
3. MSK
4. RDS
5. ELB
6. ECS
7. S3

## VPC
- Setup CIDR
- Create Public Subnet
- Create Private Subnets (1 per AZ)
- Create Internet Gateway
- Create & Setup Router tables
- Setup Subnet - Router table association
- Create & Setup VPN (*require IT Support)
- Create DHCP Set (to access dns servers on prem)
- Create NAT Gateway

## MSK
- Create Cluster

## RDS
- Create Cluster

## EBS
- Create Volumes (1 per EC2 Instance)
- Create VolumeAttachment

## S3
- Create Buckets & Policies (media files,elb logs)

## EC2

### Mount Volume + Setup Docker Swarm Cluster

Setup Managers:
1. Init + mount EBS volumes (*require EBS)
2. Install & Setup docker + expose DOCKER_HOST
3. Init docker swarm cluster
4. Deploy portainer
5. Create docker networks external
6. Create docker volumes external
7. Login to docker private registry
8. Create MSK topics (*require MSK)
9. Create RDS databases (*require RDS)
10. Setup crontab

Setup Workers:
1. Init + mount EBS volumes (*require EBS)
2. Install & Setup docker 
3. Join docker swarm cluster
4. Login to docker private registry
5. Setup crontab

## ELB
- Create Listeners

## ECS
- Create ECS cluster

## SECURITY GROUPS
- EC2
- MSK
- RDS
- ELB

## DNS
- Migrate ENV.serioplast.com
- Migrate api-ENV.serioplast.com
- Migrate design-system-ENV.serioplast.com

## IAM
- Create user serpe.service
- Create serpe.s3.service
...MSK Roles??

## CLOUD WATCH
- Create D...