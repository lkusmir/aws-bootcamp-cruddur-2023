FROM node:16.18
# Let's make sure we're updated and install curl for the Healthcheck
RUN apt-get update && apt-get full-upgrade -y\
  && rm -rf /var/lib/apt/lists/*
COPY . /frontend-react-js
WORKDIR /frontend-react-js
RUN npm install
ENV PORT=3000
EXPOSE ${PORT}
CMD ["npm", "start"]