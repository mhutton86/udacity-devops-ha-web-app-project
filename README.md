# Udacity High-Availability CloudFormation Environment Project
This README.md is for my submission of the Udacity: Cloud DevOps Engineering "High-Availability" project.
This submission contains AWS CloudFormation templates and scripts used for create/deleting the defined template stacks.

## Prerequisites
These instructions assume:
- The AWS CLI has been set up
- There's an AWS user configured to successfully interact with the AWS API
- The configured AWS user has the necessary roles, policies, and/or access to set up the infrastructure. 

## Instructions

For spinning up this environment, perform the following:

1. Create the networking infrastructure stack
    1. `./create.sh "udagram-infra" webapp-infra.yaml infra-params.json`
1. When the "udagram-infra" stack create is completed, upload the site files to S3
    1. `./upload-site-to-s3.sh`
1. Create the high-availability server stack
    1. `./create.sh "udagram-servers" webapp-ha-servers.yaml ha-servers-params.json`
1. Once the "udagram-servers" stack create is completed, look at the "udagram-servers"'s "LoadBalancerUrl" Output for
the load balancer URL for loading the pages. 

## Contribution
This was a personal project submission, therefore I don't expect outside contributions.

## License
There is no license for this. Use at your own risk.