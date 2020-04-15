#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag udacity-ml-image .

# Step 2: 
# List docker images
docker image ls | grep udacity-ml-image

# Step 3: 
# Run flask app
docker run -p 8000:80 --name udacity-ml-app udacity-ml-image