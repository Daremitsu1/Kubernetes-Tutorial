# Kubernetes-Tutorial

Folder Structure:
```
myapp/
├── app.py
├── Dockerfile
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
├── deploy.sh
└── dags/
    └── myapp_deploy_dag.py

```

You can then make the script executable with:

`chmod +x deploy.sh`

And run it with:

`./deploy.sh`
