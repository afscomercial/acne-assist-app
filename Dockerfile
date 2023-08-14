FROM node:18-alpine

EXPOSE 3000
WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

RUN npx prisma migrate dev --name init

CMD ["npm", "run", "start"]
