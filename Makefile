# ----------------
#    Docker
# ----------------
IMAGE ?= quay.io/postmates/airflow
TAG ?=  dev_ali_amiri #  1.10.3d

build:
	docker build -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)

upgrade: build push

pull:
	docker pull $(IMAGE):$(TAG)

clean-image:
	docker rmi $(IMAGE):$(TAG) -f
