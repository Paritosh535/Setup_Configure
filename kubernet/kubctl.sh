echo "https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x ./kubectl

mv ./kubectl /usr/local/bin/kubectl

echo "install minkub https://github.com/kubernetes/minikube/releases"

