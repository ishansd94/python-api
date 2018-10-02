FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install python-pip python-dev build-essential -y
WORKDIR /api
COPY . /api
ENV FLASK_ENV=development
ENV FLASK_APP=app/app.py
RUN pip install -r requirements.txt
EXPOSE 5000
RUN env
CMD [ "flask" , "run", "--host=0.0.0.0" ]
