FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]