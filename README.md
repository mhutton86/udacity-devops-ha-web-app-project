# udacity-devops-ha-web-app-project

## Instructions
For spinning up this project, perform the following:

1. Create the networking infrastructure stack
    1. `./create.sh "udagram-infra" webapp-infra.yaml infra-params.json`
1. When the "udagram-infra" stack create is completed, upload the site files to S3
    1. `./upload-site-to-s3.sh`
1. Create the high-availability server stack
    1. `./create.sh "udagram-servers" webapp-ha-servers.yaml ha-servers-params.json`
1. Once the "udagram-servers" stack create is completed, look at the "udagram-servers"'s "LoadBalancerUrl" Output for
the load balancer URL for loading the pages. 