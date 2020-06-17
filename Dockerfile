FROM node:10.15.3

LABEL NAME="spytliak/sails-rest-api"
LABEL VERSION="0.0.0"
LABEL MAINTEINER="Serhii Pytliak" 

ENV HOST="0.0.0.0"
ENV PORT="1337"

WORKDIR /app
COPY . .

RUN npm i --no-cache && npm i sails -g  --no-cache

HEALTHCHECK --interval=5s --timeout=3s --start-period=3s --retries=3 CMD [ "curl", "0.0.0.0:1337" ]

EXPOSE 1337
ENTRYPOINT [ "sails", "lift" ]
