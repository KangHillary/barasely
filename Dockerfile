# pull official base image
FROM python:3.7-alpine


# set the working directory
RUN mkdir /baratel
WORKDIR /baratel

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
# RUN pip install --upgrade pip
COPY ./requirements.txt .
# COPY ./init.sh .
COPY ./init.sh .
RUN pip install -r requirements.txt

# copy api project to workdir
COPY . .

# add uppuser
RUN adduser -D appuser
RUN chown -R appuser:appuser /baratel
USER appuser


