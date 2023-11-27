# Gunakan base image resmi Ubuntu
FROM ubuntu:20.04

# Install Python dan pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Set working directory di dalam container
WORKDIR /app

# Copy file requirements.txt dan install dependensinya
# COPY requirements.txt .
# RUN pip3 install --no-cache-dir -r requirements.txt

# Copy seluruh konten proyek ke dalam container
COPY . .

# Expose port yang akan dijalankan oleh aplikasi
EXPOSE 8081

# Command untuk menjalankan aplikasi
CMD ["python3", "app/persegi.py"]
