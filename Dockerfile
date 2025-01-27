FROM python:3.9.15-slim-buster

COPY sources.list /etc/apt/sources.list

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONIOENCODING=UTF-8
ENV TZ=Asia/Shanghai
ENV PROJECT_DIR=/srv/web

COPY ./ $PROJECT_DIR

WORKDIR $PROJECT_DIR

RUN apt update -y

RUN apt install -y default-libmysqlclient-dev python3-dev gcc

RUN pip3 install -r requirements.txt -i https://mirrors.ustc.edu.cn/pypi/web/simple

ENV PYTHONPATH=$PYTHONPATH:$PROJECT_DIR

EXPOSE 8080

WORKDIR $PROJECT_DIR

CMD python manage.py runserver 0.0.0.0:8080
