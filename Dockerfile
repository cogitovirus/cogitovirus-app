FROM node:12-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
COPY . ./
RUN npm run build --prod
EXPOSE 8080
ENV PORT=8080
CMD [ "node", "dist/server.js" ]