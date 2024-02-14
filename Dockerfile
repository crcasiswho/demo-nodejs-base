FROM node:14

WORKDIR /app
COPY package*.json ./
RUN npm install -timeout=600000
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]