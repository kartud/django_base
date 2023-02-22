FROM python:3.11.2-slim-bullseye

# Environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Work directory
WORKDIR /code

# Dependencies
COPY ./requirements.txt .
RUN python -m pip install -r requirements.txt

# Copy project
COPY . .