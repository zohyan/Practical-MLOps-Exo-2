FROM ubuntu:latest

# install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3.8 \
    python3-pip

# copying directory
COPY . /app

# changing workdir
WORKDIR /app

# running pipeline
RUN make install && make test