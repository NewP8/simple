FROM node:alpine

# docker run [image] ..comandi = create + start (stop)
# docker ps  [--all]
# docker logs ..
# docker exec -it [container] ..comandi (ls.. sh..)


WORKDIR /usr/app

# COPY ./ ./
# docker build -t paofab/simpleweb .

COPY ./package.json ./
RUN npm install
COPY ./ ./
# così non fa npm install se non cambia package.json

CMD ["npm", "start"]
# docker run -p 8080:8080 paofab/simpleweb


# hub.docker.com -> repository di immagini docker

# docker system prune
