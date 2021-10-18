# We're using the same Ruby image the Pipeline uses to run the tests on STP
FROM docker.devops.stp.hmlr.zone/stp/ruby30-chrome:test

WORKDIR /src

# Create a user that matches dev-env runner's host user
# And ensure they have access to the app src folder at runtime
USER root
ARG OUTSIDE_UID
ARG OUTSIDE_GID
RUN groupadd --force --gid $OUTSIDE_GID containergroup && \
 useradd --uid $OUTSIDE_UID --gid $OUTSIDE_GID containeruser && \
 mkdir -p /src && chown -R containeruser: /src
USER containeruser

# Preinstall gems into the image, as tests run in new containers each time
# you don't want to be constantly reinstalling them on each run
COPY --chown=$OUTSIDE_UID:$OUTSIDE_GID Gemfile* /src/
RUN bundle config timeout 30 && \
 NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install --jobs 12
