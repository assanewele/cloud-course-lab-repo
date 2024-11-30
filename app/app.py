from flask import Flask

app = Flask(__name__)


@app.route('/')
def home():
    return "This is Assane Diouf's sample flask app deployed in Azure (Azure Container App) help to github action. This task is done for the cloud course lab. Devops course."


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
