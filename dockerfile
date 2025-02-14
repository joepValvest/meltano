FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && pip install meltano
RUN meltano install

# Replace <pipeline-name> with your actual command, for example:
# CMD ["meltano", "run", "tap-mysql", "target-csv"]
CMD ["meltano", "run", "<pipeline-name>"]
