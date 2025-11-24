FROM n8nio/n8n:1.66.0

# Required on Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Use Render’s URL here:
# ENV WEBHOOK_URL=https://<your-service-name>.onrender.com

# Create and fix permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

USER node

EXPOSE 5678

CMD ["n8n"]
