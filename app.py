import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    system_hostname = os.environ.get('HOSTNAME', 'Unknown')
    return render_template('index.html', hostname=system_hostname)
