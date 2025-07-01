FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Set default environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Start n8n
CMD ["n8n", "start"]
