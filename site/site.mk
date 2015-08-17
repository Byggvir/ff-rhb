GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-15 \
    gluon-alfred \
    gluon-announced \
    gluon-neighbour-info \
    gluon-autoupdater \
    gluon-setup-mode \
    gluon-config-mode-core \
    gluon-config-mode-autoupdater \
    gluon-config-mode-hostname \
    gluon-config-mode-mesh-vpn \
    gluon-config-mode-geo-location \
    gluon-config-mode-contact-info \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-legacy \
    gluon-luci-admin \
    gluon-luci-autoupdater \
    gluon-luci-portconfig \
    gluon-luci-private-wifi \
    gluon-luci-node-role \
    gluon-next-node \
    gluon-mesh-vpn-fastd \
    gluon-radvd \
    gluon-status-page \
    iwinfo \
    iptables \
    haveged 

DEFAULT_GLUON_RELEASE := 0.8~exp$(shell date '+%Y%m%d')
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
# GLUON_SITEDIR=site-siegburg/
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de
