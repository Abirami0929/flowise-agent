FROM node:20-bullseye-slim

RUN apt-get update && apt-get install -y \
    python3 make g++ \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN npm install -g flowise@1.6.0

ENV PORT=10000
ENV FLOWISE_USERNAME=admin
ENV FLOWISE_PASSWORD=flowise@2026

EXPOSE 10000

CMD ["flowise", "start"]