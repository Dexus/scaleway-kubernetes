NAME               = etcd-docker-kubernetes-weave-1.7.6
VERSION            = 1.7.6
VERSION_ALIASES    = 1.7.6
TITLE              = etcd-docker-kubernetes-weave-1.7.6
DESCRIPTION        = An image to create etcd masters, kubernetes master+worker and a Weave VPN overlay network
SOURCE_URL         = https://github.com/iosphere/scaleway-kubernetes

IMAGE_VOLUME_SIZE  = 50G
IMAGE_BOOTSCRIPT   = mainline
DEFAULT_IMAGE_ARCH = x86_64

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:

	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
