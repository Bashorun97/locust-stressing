FROM python:3.7

WORKDIR /app

ENV PATH /home/locust/.local/bin:$PATH

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8089 5557

RUN useradd --create-home locust
USER locust
WORKDIR /home/locust

ENV PYTHONBUFFERED=1