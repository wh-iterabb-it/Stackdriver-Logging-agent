
.PHONY:	build push

PREFIX=gcr.io/<your-project-id>
TAG = 2.0.13

build:
	docker build --pull -t $(PREFIX)/fluentd-gcp:$(TAG) .


push:
	gcloud docker -- push $(PREFIX)/fluentd-gcp:$(TAG)
