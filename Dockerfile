FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y curl unzip
RUN curl -Lo /tmp/allure3.zip https://github.com/allure-framework/allure3/archive/refs/tags/v3.3.1.zip
RUN unzip /tmp/allure3.zip -d /opt/
RUN ln -s /opt/allure3-3.3.1/bin/allure /usr/bin/allure
COPY . .
