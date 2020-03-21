from datetime import datetime
from flask import Flask, request
from flask_json import FlaskJSON, JsonError, json_response, as_json


app = Flask(__name__)
json = FlaskJSON(app)

@app.route("/")

def hello():
    return json_response(text = "Herzlich Willkommen zur DonateYourWork API! :)")

@app.route('/get_time')
def get_time():
    now = datetime.utcnow()
    return json_response(time=now)



if __name__ == "__main__":

    app.run(host='0.0.0.0')