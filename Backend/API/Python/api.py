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

@app.route("/job", methods=["POST","GET"])
def job():
    if request.method == "GET":
        title = request.args.get("title")
        employer = request.args.get("employer")
        donation = request.args.get("donation")
        return "It worked"
    elif request.method == "POST":
        return "It works"

@app.route("/user", methods=["GET"])
def user():
    username = request.args.get("username")
    email = request.args.get("email")
    description = request.args.get("description")
    location = request.args.get("location")
    return "user"

if __name__ == "__main__":
    
    app.run(host='0.0.0.0')