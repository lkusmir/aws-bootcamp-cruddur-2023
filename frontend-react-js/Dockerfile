FROM node:16.18-slim
LABEL vendor="CloudProjectBootcamp"
LABEL built-by="lkusmir"
# Let's make sure we're updated and install curl for the Healthcheck
RUN apt-get update && apt-get full-upgrade -y\
  && apt-get install -y curl \
  && rm -rf /var/lib/apt/lists/*
COPY --chown=node:node . /frontend-react-js
WORKDIR /frontend-react-js
RUN npm install
ENV PORT=3000
EXPOSE ${PORT}
USER node
CMD ["npm", "start"]