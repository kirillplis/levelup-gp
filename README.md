# MS Paint

Here is my LevelUp school DevOps Engineer course graduation project.

This project main goal is to deploy web-version of old-school MS Paint.
No instructions here, enjoy your nostalgia!

## Installation process:
1) Run VM instance with ubuntu 20.04 onboard, create firewall rule which opens ports: 80, 8080, 3000, 5601.
2) Install ansible, add SSH-key to target machine, run "ansible-playbook vkr.yml". 
   It deploys:
```
        - Jenkins as program;
        - Zabbix and Grafana as docker containers;
        - ELK stack as docker containers via docker-compose;
```
3) Create Kubernetes cluster:
```
    - echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    - apt install -y apt-transport-https ca-certificates gnupg
    - curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
    - apt update -y && apt install -y google-cloud-sdk \
        docker.io -y
        kubectl -y
    - gcloud auth login
    - gcloud services enable container.goolgeapis.com
    - gcloud container clusters create vkr --zone europe-north1-a
    - gcloud config set compute/zone europe-north1-a
    - gcloud container clusters get-credentials vkr
```
4) Create Jenkins pipeline, set GitHub repository, GitHub hook trigger for GITScm polling, and webhook at GitHub repository.
5) And that's it. Commit to repository starts a deploy of app to k8s cluster. Estimated deployment time is about 7 minutes.

## Links:
```
Paint - http://35.228.58.197:8080
Jenkins - http://35.187.50.242:8080
Grafana - http://35.187.50.242:3000
Zabbix - http://35.187.50.242:80
Kibana (ELK) - http://35.187.50.242:5601
```
