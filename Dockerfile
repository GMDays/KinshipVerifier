FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /kinship-verifier
WORKDIR /kinship-verifier
ADD requirements.txt /kinship-verifier/
RUN pip install -r requirements.txt
ADD . /kinship-verifier/
