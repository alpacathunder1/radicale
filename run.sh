#!/bin/bash
docker build -t radicale .
docker stop radicale
docker rm radicale
mkdir config &> /dev/null
docker run -d --network=docker_belphegornet --name=radicale -u 1000:1000 -v "$(pwd)"/config:/config:ro -v "$(pwd)"/data:/data radicale
