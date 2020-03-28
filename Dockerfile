# Pull base image
FROM python:3.7

# Name of maintainer
MAINTAINER Fasih

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
RUN mkdir /app
WORKDIR /app

# Install dependencies
COPY Pipfile Pipfile.lock /app/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY ./app /app

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
RUN adduser --disabled-password --gecos '' user
RUN chown -R user:user /vol/
RUN chmod -R 755 /vol/web
USER user
