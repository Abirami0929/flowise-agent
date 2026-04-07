FROM node:18-bullseye-slim

RUN npm install -g flowise

ENV PORT=3000
ENV FLOWISE_USERNAME=admin
ENV FLOWISE_PASSWORD=flowise@2026

EXPOSE 3000

CMD ["npx", "flowise", "start", "--PORT=3000"]