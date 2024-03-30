# FROM python:3
# ENV PYTHONUNBUFFERED=1
# WORKDIR /code
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt
# COPY . /code/


# FROM python:3.11.0

# WORKDIR /code

# Assuming you want to set an environment variable, correct the syntax if needed
# ENV venv=1

# RUN pip install --upgrade pip
# COPY . .
# RUN pip install -r requirements.txt
# EXPOSE 8001
# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8001"]


FROM python:3.11-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt


