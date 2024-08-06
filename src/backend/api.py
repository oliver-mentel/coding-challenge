from flask import Flask
import json

app = Flask(__name__)

@app.route("/api")
def get_data():
    data = []
    return json.dumps(data)