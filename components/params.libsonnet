{
  global: {
  },
  components: {
    "hello-world-ks": {
      containerPort: 8080,
      replicas: 1,
      servicePort: 8080,
      type: "ClusterIP",
    },
  },
}