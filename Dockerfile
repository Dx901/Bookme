# Dockerfile.rails
FROM ruby:2.7.1

ADD . /consult
WORKDIR /consult

# RUN apt-get update && apt-get install -y \
#     software-properties-common \
#     npm
# RUN npm install npm@latest -g && \
#     npm install n -g && \
#     n latest

# RUN curl https://deb.nodesource.com/setup_12.x | bash
# RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# RUN apt-get update && apt-get install -y yarn

RUN bundle install
ENV RAILS_ENV development
ENV RAILS_SERVE_STATIC_FILES true

EXPOSE 5000

CMD ["./bin/dev"]
