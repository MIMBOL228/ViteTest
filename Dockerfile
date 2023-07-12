FROM node:18
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY src/ ./src/
CMD ["yarn","run","dev", "--host"]
