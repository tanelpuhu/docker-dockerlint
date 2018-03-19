IMAGE_NAME=tanel/dockerlint

all:
	docker build -t ${IMAGE_NAME} .
	@docker image ls ${IMAGE_NAME}
	docker run --rm -it -v ${PWD}/Dockerfile:/Dockerfile ${IMAGE_NAME}
	docker run --rm -it ${IMAGE_NAME} -h
