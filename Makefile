# ----------------
#    Docker
# ----------------
IMAGE ?= quay.io/postmates/airflow
TAG ?= latest-awsannotation-0.5

build:
	docker build -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)

upgrade: build push

pull:
	docker pull $(IMAGE):$(TAG)

clean-image:
	docker rmi $(IMAGE):$(TAG) -f
