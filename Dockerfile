FROM python:3.9-slim-buster
WORKDIR /app
COPY ./requirements.txt /app
RUN apt-get update \
    && pip install psycopg2-binary
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=userOperation.py
CMD ["flask", "run", "--host", "0.0.0.0"]
