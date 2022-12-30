create-cluster:
	kind create cluster --config ./cluster-config.yml
	sleep 10

create-helm-controller:
	kubectl apply -f ./helm/helm.yml

create: create-cluster create-helm-controller

deploy-rabbitmq:
	kubectl apply -f ./rabbitmq/rabbitmq.yml

deploy: deploy-rabbitmq