FROM node:16

WORKDIR /app

RUN npm install -g n8n@1.32.2

EXPOSE 5678

CMD ["n8n"]
