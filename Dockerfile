FROM n8nio/n8n:1.66.0

# Required for Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Correct permissions (IMPORTANT)
RUN mkdir -p /home/node/.n8n \
    && chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

CMD ["n8n"]
