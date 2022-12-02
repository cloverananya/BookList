FROM --platform=linux/amd64 python:3.10.4-slim-bullseye

ENV PIP_DISABLE_PIP_VERSION_CHECK 1  #disable an automatic check for pip updates each time
ENV PYTHONDONTWRITEBYTECODE 1        #means python will not try to write .pyc file
ENV PYTHONUNBUFFERED 1               # ensure our console output is not buffered by docker


WORKDIR /code

COPY ./requirements.txt .
ARG PIP_DISABLE_PIP_VERSION_CHECK=1
ARG PIP_NO_CACHE_DIR=1
RUN pip install -r requirements.txt

COPY . .