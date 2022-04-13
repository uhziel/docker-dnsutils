IMG ?= uhziel/dnsutils

docker: docker-build docker-push

docker-build:
	docker build -t ${IMG} .

docker-push:
	docker push ${IMG}
