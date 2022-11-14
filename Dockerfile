FROM python:3.10.7

ENV FLASK_APP=labserver

COPY requirements.txt /opt

RUN python3 -m pip install -r /opt/requirements.txt

COPY labserver /opt/labserver

WORKDIR /opt

CMD flask --app labserver run --host 0.0.0.0 -p $PORT
$ heroku ps:scale web=1