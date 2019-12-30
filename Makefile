# ----------------
#    Docker
# ----------------
IMAGE ?= gcr.io/pm-registry/airflow
TAG ?=  merry2019

prod-build:
	docker build -f Dockerfile.pm -t $(IMAGE):$(TAG) .

prod-push:
	docker push $(IMAGE):$(TAG)

test-build:
	docker build -f Dockerfile.pm -t $(IMAGE):$(TAG)-test-image .

test-push:
    docker push $(IMAGE):$(TAG)-test-image

prod-upgrade: prod-build prod-push

test-image: test-build test-push

pull:
	docker pull $(IMAGE):$(TAG)

clean-image:
	docker rmi $(IMAGE):$(TAG) -f
