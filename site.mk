GLUON_SITE_PACKAGES := \
gluon-mesh-batman-adv-15 \
gluon-alfred \
gluon-autoupdater \
gluon-authorized-keys \
gluon-config-mode-autoupdater \
gluon-config-mode-contact-info \
gluon-config-mode-core \
gluon-config-mode-geo-location \
gluon-config-mode-hostname \
gluon-config-mode-mesh-vpn \
gluon-ebtables-filter-multicast \
gluon-ebtables-filter-ra-dhcp \
gluon-ebtables-source-filter \
gluon-web-admin \
gluon-web-autoupdater \
gluon-web-mesh-vpn-fastd \
gluon-web-node-role \
gluon-web-network \
gluon-web-private-wifi \
gluon-web-wifi-config \
gluon-mesh-vpn-fastd \
gluon-neighbour-info \
gluon-radvd \
gluon-respondd \
gluon-setup-mode \
gluon-status-page \
gluon-wan-dnsmasq \
haveged \
iptables \
iwinfo

DEFAULT_GLUON_RELEASE := v2017.1.4-$(shell date '+%Y%m%d')-stable
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= 11s
