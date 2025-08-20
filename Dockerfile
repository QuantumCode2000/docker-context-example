FROM node:20-slim AS base
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .

FROM node:20-slim
ENV NODE_ENV=production
WORKDIR /app
COPY --from=base /app /app
EXPOSE 3000
CMD ["npm", "start"]