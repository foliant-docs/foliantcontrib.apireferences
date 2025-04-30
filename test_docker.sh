#!/bin/bash

# # Write Dockerfile
echo "FROM python:3.7" > Dockerfile
# echo "RUN apk add --no-cache --upgrade bash" >> Dockerfile
# echo "RUN pip install lxml" >> Dockerfile
# echo "RUN pip install pyyaml" >> Dockerfile
echo "RUN pip install foliantcontrib.utils" >> Dockerfile

# Run tests in docker
docker build . -t test-foliant:latest

docker run --rm -it -v "./:/app/" -w /app/ --entrypoint /bin/bash test-foliant:latest -l -c "./test.sh"

# Remove Dockerfile
rm Dockerfile