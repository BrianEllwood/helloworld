IMAGE := dexydogz/helloworld
TAG := 1.8

.built-image: Dockerfile Gemfile Gemfile.lock makefile
	docker build -t $(IMAGE) .
	touch .built-image

docker push: .built-image
	docker tag $(IMAGE) $(IMAGE):$(TAG)
	docker push $(IMAGE):$(TAG)
