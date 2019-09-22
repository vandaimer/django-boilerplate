FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

RUN apt-get update && apt-get -y install gettext

COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /code/
