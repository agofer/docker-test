from flask import Flask
app = Flask(__name__)

@app.route('/ping')
def ping():
    return 'Pongush on steroids again'

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
