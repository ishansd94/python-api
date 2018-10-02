# Python-api
Sample application to test bitesize deployment pipeline

[![N|Solid](http://flask.pocoo.org/static/favicon.ico)]() Flask app

### Tech-Stack

* Python
* Flask
* Docker
* Travis

###### Steps
#
```
# Project root level
$ virtualenv .
$ source bin/activate
$ pip install -r requirements.txt
$ export FLASK_APP=main.py
$ flask run
# Available at http://127.0.0.1:5000/