FROM alpine

EXPOSE 3000
 
WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache nodejs npm && \
    npm install && \ 
    npm run build && \
    adduser -D appuser && \
    chown -R appuser:appuser /usr/src/app && \
    rm -rf /var/lib/apt/lists/* 

USER appuser

CMD [ "npm", "start" ]