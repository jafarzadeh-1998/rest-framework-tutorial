FROM python:3.7-alpine
MAINTAINER Ali Jafarzadeh Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /recipe
WORKDIR /recipe
COPY ./recipe /recipe

RUN adduser -D ali
User ali