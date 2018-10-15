from flask import Flask
import json

app = Flask(__name__)


@app.route('/')
def index():
    return "Hello, World!"


@app.route('/info')
def info():
    file = open('../VERSION')
    return json.dumps({
        'version': file.read().strip(),
        'name': 'python-api'
    })


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
