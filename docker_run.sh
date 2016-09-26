#!/bin/bash

./docker_build.sh

docker run -p 8080:8000 --name cachet -it didstopia/cachet:latest bash
