# Stage 1: Build
FROM node:18-slim AS builder

WORKDIR /app

COPY . .

RUN npm ci
RUN npm run build

# # Stage 2: Dev
# FROM node:18-slim

# WORKDIR /app

# ENV NODE_ENV=production

# COPY --from=builder /app/package*.json ./
# COPY --from=builder /app/node_modules ./node_modules
# COPY --from=builder /app/.next ./.next
# COPY --from=builder /app/public ./public

# EXPOSE 3000

CMD ["npm", "run", "dev"]
# CMD ["npm", "run", "start"]
