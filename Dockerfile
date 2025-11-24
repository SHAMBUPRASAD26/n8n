FROM n8nio/n8n:1.66.0

# Required on Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Webhook URL (change it after first deploy)
# ENV WEBHOOK_URL=https://<your-render-service>.onrender.com

# Create config folder with correct permissions
RUN mkdir -p /home/node/.n8n
RUN chmod 600 /home/node/.n8n

EXPOSE 5678

CMD ["n8n"]
