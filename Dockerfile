FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . ./

LABEL maintainer="rutger.smit@gmail.com"

EXPOSE 8080

CMD ["app.py"]
ENTRYPOINT ["python3"]