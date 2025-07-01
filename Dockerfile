FROM node:18-alpine

RUN npm install -g n8n

EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV NODE_OPTIONS="--dns-result-order=ipv4first"

CMD ["n8n", "start"]
