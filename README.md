Here is my LevelUp school DevOps Engineer course graduation project.

Деплой основных сервисов через роли ансибл с centos-01 на centos-02
Не забыть описать процесс подъема машин и первичной настройки
Добавить плагин заббикс в установку графаны

Create Kubernetes cluster for web-application:
1) echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
2) apt install -y apt-transport-https ca-certificates gnupg
3) curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
4) apt update -y && apt install -y google-cloud-sdk \
docker.io -y
kubectl -y
5) gcloud auth login
6) gcloud services enable container.goolgeapis.com
7) gcloud container clusters create vkr --zone europe-north1-a
8) gcloud config set compute/zone europe-north1-a
9) gcloud container clusters get-credentials vkr

10) git clone git@github.com:Chelbsik/levelup-vkr.git