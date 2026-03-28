# Use lightweight Node image
FROM node:20-alpine

# Set environment variables (Mongo credentials)
ENV MONGO_USERNAME=admin \
    MONGO_PASSWORD=admin

RUN mkdir -p /home/app
COPY ./app /home/app
WORKDIR /home/app

# Install dependencies
RUN npm install

# Start app
CMD ["node", "server.js"]