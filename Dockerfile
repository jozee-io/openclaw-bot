FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install openclaw globally
RUN npm install -g openclaw

# OpenClaw stores all of its memory and config in this directory.
# We map it to a persistent volume in fly.toml so it doesn't get wiped on restart.
ENV OPENCLAW_STATE_DIR=/root/.openclaw

# Expose the gateway port
EXPOSE 19001

# Start the gateway
CMD ["openclaw", "gateway", "run", "--force"]
