IMAGE_PREFIX = magiplatform
IMAGE_NAME = spark
IMG = $(IMAGE_PREFIX)/$(IMAGE_NAME)
VERSION = latest

docker-build:
	./download.sh
	docker build --pull -t $(IMG):$(VERSION) .

docker-push: docker-build
	docker push $(IMG):$(VERSION)
