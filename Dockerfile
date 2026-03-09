FROM node:latest
WORKDIR /app
EXPOSE 80

COPY ./ ./
ARG BASE_URL
ENV REACT_APP_API_BASE_URL=$BASE_URL


RUN npm install -g serve

RUN yarn install



ENV PORT=80

CMD ["serve", "-s", "build"]