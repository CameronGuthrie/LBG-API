FROM node:14
WORKDIR /app
COPY . .
RUN npm install
ENV PORT=5000
EXPOSE 5000
ENTRYPOINT ["npm","start"]
