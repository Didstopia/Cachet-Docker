#!/bin/bash

# Set Docker to use the machine
eval "$(docker-machine env default)"

docker run -p 80:8000 --name cachet -it didstopia/cachet:latest bash