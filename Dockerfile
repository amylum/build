FROM ghcr.io/dock0/build:20240102-5f0b4a0
RUN pacman -S --needed --noconfirm namcap ruby
RUN gem install --no-doc --no-user-install s3repo
RUN useradd -m --uid 501 build
RUN chown build:build /opt/build
USER build
