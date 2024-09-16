# Comandos para preparação do cluster k8s usando Calico CNI.

## kubeadm init
```
sudo kubeadm init --apiserver-advertise-address=172.89.0.11 --pod-network-cidr=192.168.0.0/16
```


## Configurando nodes para acertar o IP:

### Master-1:

```
IP=172.89.0.11
echo "KUBELET_EXTRA_ARGS=--node-ip=$IP" > /etc/default/kubelet
systemctl daemon-reload
systemctl restart kubelet
```

### Worker-1:

```
IP=172.89.0.21
echo "KUBELET_EXTRA_ARGS=--node-ip=$IP" > /etc/default/kubelet
systemctl daemon-reload
systemctl restart kubelet
```

## Alterando permissões do .kube/config
```
chmod 600 ~/.kube/config
```