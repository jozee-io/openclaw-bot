# OpenClaw Bot Deployment

This repository contains the files needed to deploy OpenClaw to Fly.io as an always-on background bot.

## How to deploy:
1. Install `flyctl` and log in (`fly auth login`).
2. Run `fly volumes create openclaw_data --region iad --size 1` to create persistent memory.
3. Run `fly deploy` to push this container to the cloud.
