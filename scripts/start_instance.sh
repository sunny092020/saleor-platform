#!/bin/bash

aws configure set aws_access_key_id AKIASRPRNAXDUXJY7U7S
aws configure set aws_secret_access_key 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
aws configure set default.region ap-southeast-1

aws ec2 start-instances --instance-ids i-0d8e85fae69a80f38