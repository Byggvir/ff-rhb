## Site configuration File Freifunk Rheinbach
## Thomas Arend
## 2018
## Master Make File für Gluon Branch Master

GLUON_SITE_PACKAGES := \
gluon-alfred \
gluon-authorized-keys \
gluon-autoupdater \
gluon-client-bridge \
gluon-config-mode-autoupdater \
gluon-config-mode-contact-info \
gluon-config-mode-core \
gluon-config-mode-geo-location \
gluon-config-mode-hostname \
gluon-config-mode-mesh-vpn \
gluon-core \
gluon-ebtables \
gluon-ebtables-filter-multicast \
gluon-ebtables-filter-ra-dhcp \
gluon-ebtables-segment-mld \
gluon-ebtables-source-filter \
gluon-l3roamd \
gluon-mesh-batman-adv \
gluon-mesh-vpn-core \
gluon-mesh-vpn-fastd \
gluon-mesh-vpn-tunneldigger \
gluon-neighbour-info \
gluon-radvd \
gluon-respondd \
gluon-setup-mode \
gluon-site \
gluon-status-page \
gluon-status-page-api \
gluon-wan-dnsmasq \
gluon-web \
gluon-web-admin \
gluon-web-autoupdater \
gluon-web-mesh-vpn-fastd \
gluon-web-network \
gluon-web-node-role \
gluon-web-private-wifi \
gluon-web-theme \
gluon-web-wifi-config \
haveged \
iptables \
iwinfo \


# basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2

# UMTS support for USB devices
USB_PACKAGES_UMTS := \
	libusb-1.0 \
	usb-modeswitch \
	usbreset \
	chat \
	comgt \
	kmod-ppp \
	kmod-pppoe \
	kmod-usb-serial \
	kmod-usb-serial-option \
	kmod-usb-serial-wwan \
	ppp \
	ppp-mod-pppoe
	
# storage support for USB devices
USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
	kmod-ath9k-htc  \
	kmod-ath9k-common \
	kmod-ath \
	kmod-brcmfmac \
	kmod-carl9170 \
	kmod-mii \
	kmod-nls-base \
	kmod-rt73-usb \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx

# network support for PCI devices
PCI_PACKAGES_NET := \
	kmod-3c59x \
	kmod-e100 \
	kmod-e1000 \
	kmod-e1000e \
	kmod-forcedeth \
	kmod-igb \
	kmod-natsemi \
	kmod-ne2k-pci \
	kmod-pcnet32 \
	kmod-r8169 \
	kmod-sis900 \
	kmod-sky2 \
	kmod-tg3 \
	kmod-tulip \
	kmod-via-rhine

# misc packages
MISC_PACKAGES := \
	kmod-usb-acm \
	kmod-usb-serial-simple

USB_PACKAGES_MR3020 := \
	kmod-nls-base \
	kmod-usb-core \
	kmod-mii \
	kmod-usb-net \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-rndis \
	kmod-usb-uhci

#
# $(GLUON_TARGET) specific settings:
#

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(MISC_PACKAGES)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(MISC_PACKAGES)
endif

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(MISC_PACKAGES)
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(MISC_PACKAGES)
endif

# ar71xx-generic / tiny
GLUON_tp-link-archer-c5-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-archer-c7-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-archer-c7-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

GLUON_tp-link-tl-wr842n-nd-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr842n-nd-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr842n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(MISC_PACKAGES)

GLUON_tp-link-tl-wr1043n-nd-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

GLUON_tp-link-tl-wdr3500-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wdr3600-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wdr4300-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

GLUON_tp-link-tl-mr3020-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_MR3020) -gluon-status-page

#GLUON_WRT160NL_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
#GLUON_WZRHPAG300H_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
#GLUON_WZRHPG450H_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
#GLUON_DIR505A1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
#GLUON_GLINET_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

# mpc85xx-generic
GLUON_tp-link-tl-wdr4900-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

DEFAULT_GLUON_RELEASE := master-$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= 11s
