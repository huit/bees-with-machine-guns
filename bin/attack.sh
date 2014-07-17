#!/bin/bash

AWS_PROFILE="--profile nephoeng"
NAME="BeesAttack"
KEYNAME="parrott-ec2"


STACK_CREATE="aws ${AWS_PROFILE} cloudformation create-stack"
OPTIONS=" --disable-rollback  --capabilities CAPABILITY_IAM "
TEMPLATE_FILE=resources/bees.json

P="   ParameterKey=KeyName,ParameterValue=${KEYNAME}"
P="$P ParameterKey=BeesControllerInstanceType,ParameterValue=m1.small"
P="$P ParameterKey=BeeCount,ParameterValue=5" 

P="$P ParameterKey=Target2Sting,ParameterValue=${1}"

CMD="$STACK_CREATE $OPTIONS --stack-name ${NAME} --parameters ${P} --template-body file://${TEMPLATE_FILE}"
echo $CMD
$CMD
