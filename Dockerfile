FROM python:3.8.3-alpine
ENV PYTHONUNBUFFERED 1
# Evita que Python escriba archivos pyc en el disco
ENV PYTHONDONTWRITEBYTECODE 1
# Evita que Python almacene en búfer stdout y stderr
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
ADD . /code/
RUN pip install -r requirements.txt
