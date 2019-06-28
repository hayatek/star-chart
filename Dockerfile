FROM python:3.7.3-alpine
MAINTAINER hayatek

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk --update-cache add python3-dev postgresql-client libstdc++ \
    gcc g++ gfortran make musl openblas-dev \
    linux-headers postgresql-dev
RUN pip3 install --upgrade pip
RUN pip3 uninstall pandas
RUN pip3 install --no-cache-dir pandas --no-build-isolation
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
