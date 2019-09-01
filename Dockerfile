FROM python:3.7.3-alpine
WORKDIR /project
ADD requirements.txt /project
RUN pip install -r requirements.txt
ADD ./django_api /project
CMD ["python", "manage.py", "runserver","0.0.0.0:5000"]
