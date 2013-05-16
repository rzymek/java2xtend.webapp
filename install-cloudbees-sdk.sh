#!/bin/bash
curl -L cloudbees-downloads.s3.amazonaws.com/sdk/cloudbees-sdk-1.5.0-bin.zip > bees_sdk.zip
unzip bees_sdk.zip
rm bees_sdk.zip
mv cloudbees-sdk-1.5.0 bees
