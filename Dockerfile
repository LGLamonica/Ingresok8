FROM python:3.7

WORKDIR /app

ENV FLASK_ENV=development

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

CMD ["python","-u","main.py"]