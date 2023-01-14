FROM python:3.8
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python","simpleCloak.py","runserver","0.0.0.0:8000"]
