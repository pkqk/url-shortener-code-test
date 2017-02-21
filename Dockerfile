FROM ruby:2.4-alpine

ARG APPDIR=/usr/src/app

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p ${APPDIR}
WORKDIR ${APPDIR}

COPY Gemfile Gemfile.lock ${APPDIR}/
RUN bundle install

COPY . ${APPDIR}

EXPOSE 3000

CMD [ "rackup", "-p", "3000", "-o", "0.0.0.0" ]
