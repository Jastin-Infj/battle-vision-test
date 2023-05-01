ARG PYTHON_VERSION=3.12.0a7
ARG ALPINE_VERSION=3.17
FROM python:${PYTHON_VERSION}-alpine${ALPINE_VERSION}

RUN apk update

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code
RUN pip install --upgrade pip

RUN apk add mariadb-dev
# MariaDB


RUN pip install -r requirements.txt
COPY . /code/