FROM python:3.9

WORKDIR /app


COPY . /app

COPY Backend/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/Backend

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]