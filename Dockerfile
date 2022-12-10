# Dockerfile.rails
FROM ruby:2.7.1

ADD . /consult
WORKDIR /consult
RUN bundle install

ENV RAILS_ENV development
ENV RAILS_SERVE_STATIC_FILES true

EXPOSE 3000
CMD ["bash"]

