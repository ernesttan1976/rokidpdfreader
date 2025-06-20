FROM node:alpine
RUN npm install -g http-server
WORKDIR /app
COPY index.html .
COPY manifest.json .
COPY sw.js .
EXPOSE 8640
CMD ["http-server", "-p", "8640", "-a", "0.0.0.0"]