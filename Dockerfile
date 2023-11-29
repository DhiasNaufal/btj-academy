FROM ubuntu:latest

# Update package lists and install Python
RUN apt-get update && \
    apt-get install -y python3
    
RUN pip3 install ansible

WORKDIR /app

COPY . .

EXPOSE 8081

CMD ["python3", "app/running.py"]
