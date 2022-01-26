FROM    node
RUN     useradd roboshop
RUN     mkdir /app && chown roboshop:roboshop /app -R
USER    roboshop
WORKDIR /app
ADD     package.json .
ADD     server.js .
RUN     npm install
CMD     ["node", "server.js"]


