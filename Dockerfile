FROM python:latest
LABEL authors="Dan"

COPY ./app ./app
COPY ./data ./data
COPY ./dependencies ./dependencies

WORKDIR ./app

RUN pip install -r requirements.txt

ENTRYPOINT ["python3","main.py"]