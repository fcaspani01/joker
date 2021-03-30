# Serpe Environment - Cloud Formation template

1. VPC
2. EC2
3. MSK
4. RDS
5. ELB

## VPC
- Setup CIDR
- Create Subnets
- Setup IGW
- Create & Setup Router
- Create & Setup Vpgw/Transit Gateway
- Create Nat Gateway

## MSK
- Create Cluster

## RDS
- Create Cluster

## EBS
- Create Volume
- Create VolumeAttachment

## EC2
Setup UserData (Manager):
1. Init + mount EBS volumes
2. Setup docker + expose DOCKER_HOST
3. Init docker swarm cluster
4. Deploy portainer
5. Create docker networks external
6. Create docker volumes external
7. Login to docker private registry
8. Create MSK topics
9. Create RDS databases
10. Setup crontab

Setup UserData (Worker):
1. Init + mount EBS volumes
2. Setup docker 
3. Join docker swarm cluster
4. Login to docker private registry
5. Setup crontab

## ELB
- Create Listeners

## SECURITY GROUPS
- EC2
- MSK
- RDS
- ELB

## DNS
- ENV.serioplast.com
- api-ENV.serioplast.com
- design-system-ENV.serioplast.com

## IAM
...

## CLOUD WATCH
...