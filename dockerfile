# Dockerfile
FROM python:3.9-slim

WORKDIR /app

RUN pip install flask==2.3

COPY ./app.py /app

ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0","--port=5000"]

#CMD ["python", "app.py"]