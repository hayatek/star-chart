FROM python:3.7.3-alpine
MAINTAINER hayatek

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --no-cache --virtual .tmp postgresql-client \
    gcc g++ make gfortran openblas-dev linux-headers \
    linux-headers postgresql-dev
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir pandas --no-build-isolation
RUN pip3 install -r /requirements.txt
RUN apk add gettext-dev


RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
