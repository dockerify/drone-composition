### drone-composition

#### usage

**Single Machine**

- create `.drone.env` file with the following environment variables

```
DRONE_GITHUB_CLIENT_ID={{ your-github-client-id }}
DRONE_GITHUB_CLIENT_SECRET={{ your-github-client-secret }}
DRONE_SERVER_HOST={{ your-drone-server-host }}
DRONE_SERVER_PROTO={{ your-drone-server-protocol }}
```

**Kubernetes**

- create `.drone.env` file with the following environment variables

```
your-github-client-id: {{ your-github-client-id }}
your-github-client-secret: {{ your-github-client-secret }}
your-drone-server-host:  {{ your-drone-server-host }}
your-drone-server-protocol: {{ your-drone-server-protocol }}
your-shared-secret: {{ your-shared-secret }}
```

`$ bosh interpolate k8s_yaml.yml --vars-file=.drone.env > k8s.yml`

`$ kubectl apply -f k8s.yml`

`$ kubectl expose pod drone --port=8000 --target-port=80 --type=NodePort`
