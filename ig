apiVersion: autoscaling/v2beta2
kind: HorizontalPodAutoscaler
metadata:
  name: app-hpa
  namespace: decisionservice-ns
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: decisionservice-service
  minReplicas: 3
  maxReplicas: 5
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 80
  - type: Resource
    resource:
      name: memory
      target:
        type: Utilization
        averageUtilization: 80






apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: jj-nginx-ingress
  namespace: e-ns
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: de-service
            port:
              number: 8083
