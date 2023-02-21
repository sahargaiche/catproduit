FROM node:latest as node
WORKDIR /app
COPY . .
Run npm install
Run npm run build --prod
CMD ["npm","start"]

FROM nginx:alpine
COPY --from=node /app/dist/frontend-crud /usr/share/nginx/html    