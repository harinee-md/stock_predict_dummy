# Dockerfile

FROM apache/airflow:2.9.0-python3.10

# Install additional packages
USER root
RUN apt-get update && apt-get install -y libpq-dev gcc

# Switch back to airflow user
USER airflow

# Copy your DAGs and requirements
COPY requirements.txt /requirements.txt
COPY dags /opt/airflow/dags
COPY sql /opt/airflow/sql

# Install Python packages
RUN pip install --no-cache-dir -r /requirements.txt
