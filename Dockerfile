FROM ghcr.io/dock0/build:20240409-4a324d2
RUN pacman -S --needed --noconfirm namcap ruby cmake
RUN pacman -S --needed --noconfirm alsa-lib ant apparmor appstream-glib asciidoc asciidoctor attr autoconf bash-completion boost btrfs-progs clang cmake containers-common cups dbus dbus-broker docbook-xsl doxygen e2fsprogs ell emacs gettext gi-docgen git glibc gn go gobject-introspection go-md2man gperf graphviz gtest gtk3 gtk-doc java-runtime-headless json-c krb5 leatherman lib32-gcc-libs libcap-ng libevent libical libldap libseccomp linux-api-headers lld llvm meson nasm netplan ninja nlohmann-json nodejs patchelf pipewire pkgconf python python-build python-dbus python-docutils python-gobject python-httplib2 python-installer python-pygments python-pyparsing python-recommonmark python-setuptools python-six python-sphinx python-sphinx_rtd_theme python-wheel qt5-base qt6-base rapidjson reiserfsprogs rust sequoia-sq swig systemd unzip util-linux vala valgrind xmlto xmltoman xxhash yasm yelp-tools
RUN gem install --no-doc --no-user-install s3repo
RUN useradd -m --uid 501 build
RUN chown build:build /opt/build /tmp
USER build
