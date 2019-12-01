NAME	= mateothegreat/docker-nexus-gcloud
ALIAS	= docker-nexus-gcloud
VERSION	= 3.19.1-01

all:	build tag_latest push

build:

	@echo "Building an image with the current tag $(NAME):$(VERSION).."
	
	docker build 	--rm 	\
					--tag $(NAME):$(VERSION) \
					.

tag_latest:

	docker tag $(NAME):$(VERSION) $(NAME):latest

push:

	docker push $(NAME)