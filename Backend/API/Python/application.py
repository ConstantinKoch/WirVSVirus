from flask import Flask
from flask_json import FlaskJSON, JsonError, json_response, as_json
from datetime import datetime

# print a nice greeting.
def say_hello(username = "World"):
    return 'Hello %s!' % username

# EB looks for an 'application' callable by default.
application = Flask(__name__)
Json = FlaskJSON(application)

@application.route("/")
def hello():
    return json_response(text = "Herzlich Willkommen zur DonateYourWork API! :)")

@application.route('/get_time')
def get_time():
    now = datetime.utcnow()
    return json_response(time=now)

# run the app.
if __name__ == "__main__":
    # Setting debug to True enables debug output. This line should be
    # removed before deploying a production app.
    application.debug = True
    application.run()