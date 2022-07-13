# Kubernetes

## Description
---
We want to migrate an on-prem project to Kuberntes.
This project contains small applications and a monitoring platform.
It's our first time deploying to k8s and we are not able to figure out
why some applications are not working. Due to our lack of knowledge we are
probably missing some best practices.

Could you help us troubleshooting the apps, making them reliable
and answer some questions that we have?

```
To speed this up, we provide a fully working Kubernetes cluster using KinD with a partially working solution.
```

&nbsp;
## How to Start
---
1. Check and run [deploy-cluster.sh](./deploy-cluster.sh)
1. Check and run [deploy-apps.sh](./deploy-apps.sh) 


&nbsp;
## Your task
---
&nbsp;
> Troubleshooting
1. Identify and fix the runner pod that is crashing
1. Identify and fix the application [http://web.tiko](http://web.tiko)
    * If this URL is not reachable, check [deploy-cluster.sh](./deploy-cluster.sh) line 49;
    * You should see a `web page`

&nbsp;
> Monitoring \
> _You can access prometheus at [http://prometheus.tiko](http://prometheus.tiko)_
1. Make the `web` application discoverable by Prometheus under `Targets` tab
    
&nbsp;
> High-availability
1. Make the `web` application highly-available as much as possible

&nbsp;
> Basic Maintenance \
> _Provide the commands that answers the questions below_
- Which is/are the hostname(s) in your Cluster?
- How do you safely remove all pods from a node?
- How to restart a deployment without downtime?
- How do I check the logs from a specific namespace?

&nbsp;
## Notes
---
- Remember the IaC, we need to be able to reproduce your steps
- Double check the notes in [README.md](../README.md) in the root folder if something is not clear
