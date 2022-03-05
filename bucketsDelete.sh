#!/bin/bash

# BUCKET_NAME=petstoreparentstackpipelieplicationbucketd6dadffd4fa0d9e50143
# list all buckets an copy to buckets.txt which you want to delete
# aws s3 ls | awk '{print $3}'

filename='buckets.txt'

while read line; do
aws s3 rb s3://$line --force
done < $filename