# kubernetes

## pod create 
```
kubectl get pod
 1997  kubectl apply -f pod.yaml 
 1998  kubectl get pod
 1999  kubectl get pod -o wide
 2000  kubectl get pod
 2001  kubectl describe pod mypod
 2002  kubectl get pod 
 2003  kubectl get pod -A
 2004  kubectl get pod
 2005  kubectl get namespace
 2006  kubectl get pod -A
 2007  kubectl get pod --namespace pizza
 2008  kubectl create namespace akash
 2009  kubectl get ns
 2010  kubectl apply -f pod.yaml 
 2011  kubectl get po
 2012  kubectl get pod -n akash
 2013  history

akash@sky:~/office_batch_k8s$ kubectl get pod
akash@sky:~/office_batch_k8s$ kubectl get pod
NAME     READY   STATUS    RESTARTS      AGE
akpo1d   1/1     Running   4 (37m ago)   60d
mypod    1/1     Running   0             3m48s
next     1/1     Running   5 (36m ago)   60d
akash@sky:~/office_batch_k8s$ kubectl describe pod mypod
Name:             mypod
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.49.2
Start Time:       Tue, 07 May 2024 11:08:13 +0530
Labels:           <none>
Annotations:      <none>
Status:           Running
IP:               10.244.0.29
IPs:
  IP:  10.244.0.29
Containers:
  akc:
    Container ID:   docker://a0aacac19695ead07cbb73cd6112a4fedbd5eea02c61109f1e9d64ed16d408c9
    Image:          httpd
    Image ID:       docker-pullable://httpd@sha256:36c8c79f900108f0f09fd4148ad35ade57cba0dc19d13f3d15be24ce94e6a639
    Port:           80/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Tue, 07 May 2024 11:08:24 +0530
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-rrlpn (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  kube-api-access-rrlpn:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
akash@sky:~/office_batch_k8s$ kubectl get pod 
NAME     READY   STATUS    RESTARTS      AGE
akpo1d   1/1     Running   4 (46m ago)   60d
mypod    1/1     Running   0             12m
akash@sky:~/office_batch_k8s$ kubectl get pod
NAME     READY   STATUS    RESTARTS      AGE
akpo1d   1/1     Running   4 (49m ago)   60d
mypod    1/1     Running   0             14m
next     1/1     Running   5 (47m ago)   60d
```

## namespace

```
akash@sky:~/office_batch_k8s$ kubectl get namespace
NAME              STATUS   AGE
default           Active   62d
ingress-nginx     Active   61d
kube-node-lease   Active   62d
kube-public       Active   62d
kube-system       Active   62d
akash@sky:~/office_batch_k8s$ kubectl get pod --namespace pizza
NAME                                READY   STATUS    RESTARTS      AGE
pizza-deployment-7b68d8c975-hbn9m   1/1     Running   3 (63m ago)   53d
pizza-deployment-7b68d8c975-nn52w   1/1     Running   3 (63m ago)   53d
pizza-deployment-7b68d8c975-xgqbl   1/1     Running   3 (63m ago)   53d
akash@sky:~/office_batch_k8s$ kubectl create namespace akash
namespace/akash created
akash@sky:~/office_batch_k8s$ kubectl get ns
NAME              STATUS   AGE
akash             Active   8s
default           Active   62d
ingress-nginx     Active   61d
kube-node-lease   Active   62d
kube-public       Active   62d
kube-system       Active   62d
pizza             Active   53d
akash@sky:~/office_batch_k8s$ kubectl apply -f pod.yaml 
pod/mypod1 created
akash@sky:~/office_batch_k8s$ kubectl get po
NAME     READY   STATUS    RESTARTS      AGE
akpo1d   1/1     Running   4 (65m ago)   60d
mypod    1/1     Running   0             31m
next     1/1     Running   5 (64m ago)   60d
akash@sky:~/office_batch_k8s$ kubectl get pod -n akash
NAME     READY   STATUS    RESTARTS   AGE
mypod1   1/1     Running   0          27s
akash@sky:~/office_batch_k8s$
```
