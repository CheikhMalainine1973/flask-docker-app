FROM python:3.12-slim

WORKDIR /app

COPY hello.py .

RUN pip install flask

CMD ["flask", "--app", "hello", "run", "--host=0.0.0.0", "--port=5000"]
