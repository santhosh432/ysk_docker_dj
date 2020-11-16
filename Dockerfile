FROM python:3.5.2

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app

COPY ./requirements.txt ./app/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app