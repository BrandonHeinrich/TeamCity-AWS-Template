#!/bin/bash

source cred.sh

export AWS_DEFAULT_REGION="us-east-1"

export STACK_NAME="TeamCity"

aws cloudformation create-stack --stack-name $STACK_NAME-Network --template-body file://$PWD/networking.json
aws cloudformation wait stack-create-complete --stack-name $STACK_NAME-Network

aws cloudformation create-stack --stack-name $STACK_NAME-Network --template-body file://$PWD/networking.json
aws cloudformation wait stack-create-complete --stack-name $STACK_NAME-networking
