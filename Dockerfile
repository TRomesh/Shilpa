FROM node:8.12.0-alpine
COPY . /app
RUN ls -d /app/packages/!(frontend)/ | xargs -n1 -I 'FOLDER_NAME' sh -c 'cd /FOLDER_NAME && npm install'