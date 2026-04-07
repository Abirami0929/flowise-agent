FROM node:18-bullseye-slim

WORKDIR /app

RUN npm install -g flowise@1.6.0

ENV PORT=3000
ENV FLOWISE_USERNAME=admin  
ENV FLOWISE_PASSWORD=flowise@2026

EXPOSE 3000

CMD ["flowise", "start"]