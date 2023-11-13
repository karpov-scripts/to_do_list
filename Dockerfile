FROM python:3.12.0

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

CMD python manage.py migrate \
    && python manage.py runserver 0.0.0.0:8000