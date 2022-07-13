# Terraform

## Notes
---
```
 We provide an initial Dockerfile and a provider.tf to help you bootstraping the environment, in this way you can easily test your solution. 
```
_We will use the files that you send back so remember to update them if needed!_

&nbsp;
## Task
---
1. Create a terraform module that is able to template a simple AWS S3 Bucket with a minimum set of variables: `bucket_name` and `versioning`
1. Use your newly created module to deploy 100 buckets, with the following conditions:
> 1. The bucket name should be a string + the number of the bucket (e.g. tiko-bucket-50)
> 1. The versioning should be `enabled` for all buckets that have an `odd` bucket number
