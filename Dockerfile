FROM n8nio/n8n:latest

EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Użyj bezpośrednio node z pełną ścieżką
CMD ["node", "/usr/local/lib/node_modules/n8n/dist/index.js", "start"]
