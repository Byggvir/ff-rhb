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
gluon-luci-admin \
gluon-luci-autoupdater \
gluon-luci-mesh-vpn-fastd \
gluon-luci-node-role \
gluon-luci-portconfig \
gluon-luci-private-wifi \
gluon-luci-wifi-config \
gluon-mesh-vpn-fastd \
gluon-neighbour-info \
gluon-next-node \
gluon-radvd \
gluon-respondd \
gluon-setup-mode \
gluon-status-page \
gluon-wan-dnsmasq \
haveged \
iptables \
iwinfo

DEFAULT_GLUON_RELEASE := v2016.1-stable-$(shell date '+%Y%m%d')
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de