FROM jekyll/builder

LABEL version="0.8.0"
LABEL description="develop and generate katzenpension.koeln"
LABEL vendor="Per Starke"

COPY Gemfile .

RUN apk update && \
    bundle install && \
    gem install webrick

WORKDIR /srv/jekyll
EXPOSE 4000
