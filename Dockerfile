FROM python:2.7.15-alpine3.6
WORKDIR /api
COPY . /api
ENV FLASK_ENV=development
ENV FLASK_APP=app/app.py
RUN pip install -r requirements.txt
EXPOSE 5000
RUN env
CMD [ "flask" , "run", "--host=0.0.0.0" ]
