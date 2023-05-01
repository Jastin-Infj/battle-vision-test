ARG PYTHON_VERSION=3.12.0a7

FROM python:${PYTHON_VERSION}-slim-buster

RUN apt-get update

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code
RUN pip install --upgrade pip

# MariaDB
RUN apt-get update \
 && apt-get -y install gcc default-libmysqlclient-dev;

RUN pip install -r requirements.txt
COPY . /code/