from flask import Flask
import json
import os

app = Flask(__name__)

@app.route("/api")
def get_data():
    path = os.path.dirname(os.path.abspath(__file__))
    data = open(os.path.join(path, 'data.json'))
    return json.load(data)
