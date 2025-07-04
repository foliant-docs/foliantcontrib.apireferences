#!/bin/bash

PYTHON_VERSIONS=("3.8" "3.9")

for version in "${PYTHON_VERSIONS[@]}"; do
    # Write Dockerfile
    echo "FROM python:${version}" > Dockerfile
    echo "RUN pip install foliantcontrib.utils" >> Dockerfile
    echo "RUN pip install requests" >> Dockerfile

    # Run tests in docker
    docker build . -t test-foliant:latest

    docker run --rm -it -v "./:/app/" -w /app/ --entrypoint /bin/bash test-foliant:latest -l -c "./test.sh"

    # Remove Dockerfile
    rm Dockerfile
    docker rmi test-foliant:latest
done
