FROM node:19.8.1-alpine
RUN apk add curl
WORKDIR /app
COPY --chown=node:node . ./
RUN yarn install --production
ENV HMAC_ALGO=sha256
ENV HMAC_SECRET=secret
EXPOSE 9000
USER node
CMD ["node", "index.js"]