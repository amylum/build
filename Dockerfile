FROM ghcr.io/dock0/build:20231123-a4b4a08
RUN pacman -S --needed --noconfirm namcap ruby
RUN gem install --no-doc --no-user-install s3repo
RUN useradd -m --uid 501 build
RUN chown build:build /opt/build
USER build
