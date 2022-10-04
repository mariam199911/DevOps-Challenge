# FROM python
# FROM redis
# FROM ubuntu:latest

# # WORKDIR /app
# # ADD . /app

# EXPOSE 8081

# WORKDIR /usr/src/app

# COPY . .

# RUN set -xe \
#     && apt-get update -y \
#     && apt-get install -y python3-pip

# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt

# # COPY requirements.txt /tmp/
# # RUN pip install --requirement /tmp/requirements.txt


# # ADD hello.py .
# CMD ["export $(cat .env | xargs)"]
# CMD ["python", "./hello.py"] 


# set base image (host OS)
FROM python:3.7-alpine

# RUN apt-get update

# RUN yes | apt-get install python3-dev build-essential

# RUN pip install --upgrade pip
# set the working directory in the container
WORKDIR /usr/src/app

# copy the dependencies file to the working directory
COPY app .

# install dependencies
RUN pip3 install -r requirements.txt


CMD export $(cat .env | xargs);python hello.py

EXPOSE 8081

# command to run on container start
# CMD [ "python", "./hello.py" ]