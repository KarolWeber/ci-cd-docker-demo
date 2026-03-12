FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y curl unzip
RUN curl -Lo /tmp/allure.zip https://github.com/allure-framework/allure2/releases/download/2.27.2/allure-2.27.2.zip
RUN unzip /tmp/allure.zip -d /opt/
RUN ln -s /opt/allure-2.27.2/bin/allure /usr/bin/allure
RUN rm /tmp/allure.zip
COPY . .
