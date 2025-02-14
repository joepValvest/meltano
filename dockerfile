FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies and Meltano
RUN pip install --upgrade pip && pip install meltano
RUN meltano install

# Run your Meltano command (adjust as necessary)
CMD ["meltano", "run", "tap-mysql", "target-csv"]
