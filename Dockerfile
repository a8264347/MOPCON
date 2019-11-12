FROM node:8.12.0

RUN mkdir /app
WORKDIR /app
COPY 2019-dev/ /app

RUN yarn install
RUN yarn build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

ENV BASE_URL=http://staging.mopcon.org
ENV SPEAKER=true
ENV SCHEDULE=true
ENV SCHEDULE_UNCONF=false
ENV SPONSOR=true
ENV COMMUNITY=true
ENV TICKET=true

EXPOSE 3000
CMD ["yarn", "start"]
