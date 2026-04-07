FROM flowiseai/flowise:latest

ENV PORT=3000
ENV FLOWISE_USERNAME=admin
ENV FLOWISE_PASSWORD=flowise@2026

EXPOSE 3000

CMD ["flowise", "start"]