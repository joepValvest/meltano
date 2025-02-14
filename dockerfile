FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && pip install meltano
RUN meltano install

# Replace with your actual pipeline command
CMD ["meltano", "run", "tap-mysql", "target-csv"]
