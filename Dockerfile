FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.6

RUN gem install box-rb --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["box"]
CMD ["--help"]
