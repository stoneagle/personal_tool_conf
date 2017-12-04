.PHONY: build

USER := $(shell id -u)
GROUP := $(shell id -g)
project := 'harbor'

build-dir:
	sudo rm -rf ./$(project) && sudo mkdir ./$(project)

build-key:
	sudo cd ./$(project) && \
	sudo openssl genrsa -des3 -out ./$(project)/server.key 2048 && \
	sudo openssl rsa -in ./$(project)/server.key -out ./$(project)/server.key

build-ca-crt:
	sudo cd ./$(project) && \
	sudo openssl req -new -x509 -key ./$(project)/server.key -out ./$(project)/ca.crt -days 3650 	

build-csr:
	sudo openssl req -new -key ./$(project)/server.key -out ./$(project)/server.csr

build-crt:
	sudo openssl x509 -req -days 3650 -in ./$(project)/server.csr -CA ./$(project)/ca.crt -CAkey ./$(project)/server.key -CAcreateserial -out ./$(project)/server.crt 

build-pem:
	sudo chown $(USER):$(GROUP) -R ./$(project) && \
	cat ./$(project)/server.crt ./$(project)/server.key > ./$(project)/server.pem

build: build-dir build-key build-ca-crt build-csr build-crt build-pem
