FROM python:3.9-alpine

RUN apk update && apk add build-base libffi-dev

RUN pip3 install ansible

WORKDIR /app

COPY . .

EXPOSE 8081

CMD ["python3", "app/running.py"]
