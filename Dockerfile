FROM n8nio/n8n:latest

# Expose port
EXPOSE 5678

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Start n8n with full path
CMD ["/usr/local/bin/n8n", "start"]
