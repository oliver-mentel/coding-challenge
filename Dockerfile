# INFO: Commented out = Swisscom-specific

# FROM remote-docker.artifactory.swisscom.com/nikolaik/python-nodejs:python3.12-nodejs22-alpine
FROM nikolaik/python-nodejs:python3.12-nodejs22-alpine

WORKDIR /usr/src/app

ADD src .
COPY entrypoint.sh .

WORKDIR /usr/src/app/backend
# RUN pip config set global.index-url https://artifactory.swisscom.com/artifactory/api/pypi/pypi-remote/simple
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /usr/src/app/frontend
# RUN npm config set registry https://artifactory.swisscom.com/artifactory/api/npm/npm-remote/
RUN npm install

WORKDIR /usr/src/app
CMD [ "sh", "./entrypoint.sh" ]