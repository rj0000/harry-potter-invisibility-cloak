FROM python:3.8
COPY . .
RUN apt-get install libasound2
RUN python -m pip install --upgrade pip
RUN pip install ez_setup 
RUN pip3 install --upgrade setuptools
RUN pip install numpy
RUN pip install opencv-python==4.2.0.34
RUN pip install pygame
EXPOSE 8000
CMD ["python","simpleCloak.py","runserver","0.0.0.0:8000"]
