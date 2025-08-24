REGISTRY := docker.io
NAMESPACE := tmurakam
REPO := kafka
TAG := 4.0.0
NAME := $(REGISTRY)/$(NAMESPACE)/$(REPO):$(TAG)

BUIOLD_OPTS=

all: image

image:
	docker image build $(BUILD_OPTS) -t $(NAME) .

rmi:
	docker image rm $(NAME)

bash:
	docker container run -it --rm --entrypoint /bin/bash $(NAME)

run:
	docker container run -it --rm $(NAME)

pull:
	docker image pull $(NAME)

push:
	docker image push $(NAME)

trivy:
	trivy image $(NAME)
