FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev


# RUN apt-get clean \
#     && apt-get -y update

RUN apt-get -y install nginx 

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

# ENTRYPOINT [ "python" ]

# CMD [ "app.py" ]

COPY nginx.conf /etc/nginx
RUN chmod +x ./start.sh
CMD ["./start.sh"]
