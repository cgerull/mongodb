NAMESPACE = "mongodb"
CHART = "mongodb"
K8s_DIR = "./kubernetes"
mongo_PW = "P@ssw0rd"
ENV = "dev-local"

template : secret	## Create single file kubernetes template
	@mkdir -p $(K8s_DIR)/$(ENV)
	@helm template mongodb --values deploy/$(ENV)/$(CHART).yaml charts/$(CHART) > $(K8s_DIR)/$(ENV)/$(CHART).yaml
	@echo "Kubernetes manifest created."

manifests : secret 	## Create a set kubernetes manifests
	@mkdir -p $(K8s_DIR)/$(ENV)
	@helm template mongodb \
	--values deploy/$(ENV)/$(CHART).yaml \
	--output-dir $(K8s_DIR)/$(ENV) \
	--include-crds \
	charts/$(CHART)
	@echo "Kubernetes manifests created."
	
secret : 			## Create kubernetes secrets object
	@mkdir -p $(K8s_DIR)/$(ENV)
	@kubectl create secret generic mongodb-secret \
	--from-literal=mongo_root_pw=$(mongo_PW) -o yaml \
	--dry-run=client \
	> $(K8s_DIR)/$(ENV)/$(CHART)-secret.yml
	@echo "Secret created."

clean : 			## Remove generated artefacts
	rm -rf $(K8s_DIR)

.PHONY: template manifests clean