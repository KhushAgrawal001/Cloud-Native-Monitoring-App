FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV falsk_run_host=0.0.0.0
EXPOSE 5000
CMD [ "flask","run" ]