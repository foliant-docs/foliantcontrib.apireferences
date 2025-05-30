#!/bin/bash

# # Write Dockerfile
echo "FROM python:3.7" > Dockerfile
echo "RUN pip install foliantcontrib.utils" >> Dockerfile
echo "RUN pip install requests" >> Dockerfile

# Run tests in docker
docker build . -t test-foliant:latest

docker run --rm -it -v "./:/app/" -w /app/ --entrypoint /bin/bash test-foliant:latest -l -c "./test.sh"

# Remove Dockerfile
rm Dockerfile