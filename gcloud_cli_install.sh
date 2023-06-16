#!/bin/bash

# Download Google Cloud CLI
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-433.0.0-linux-x86_64.tar.gz

# Extract Google Cloud CLI
tar -xf google-cloud-cli-433.0.0-linux-x86_64.tar.gz

# Install Google Cloud CLI
./google-cloud-sdk/install.sh

# Initialize google cloud
./google-cloud-sdk/bin/gcloud init
