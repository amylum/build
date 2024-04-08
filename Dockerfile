FROM ghcr.io/dock0/build:20240407-42960b0
RUN pacman -S --needed --noconfirm namcap ruby cmake
RUN gem install --no-doc --no-user-install s3repo
RUN useradd -m --uid 501 build
RUN chown build:build /opt/build /tmp
USER build
