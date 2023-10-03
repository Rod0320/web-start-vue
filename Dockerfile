FROM node:18-alpine AS base

COPY . /app

WORKDIR /app
RUN npm install
RUN npm run build

CMD ["npm", "run", "preview"]