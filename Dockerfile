FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y curl unzip \
    && curl -Lo allure.zip https://github.com/allure-framework/allure2/releases/download/2.27.2/allure-2.27.2.zip \
    && unzip allure.zip -d /opt/ \
    && rm allure.zip \
    && ln -s /opt/allure-2.27.2/bin/allure /usr/bin/allure
COPY . .
