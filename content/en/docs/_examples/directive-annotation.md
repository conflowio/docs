The `@todo` block adds some notes to the `server` block and it doesn't modify its behaviour.

```conflow
@todo "Move server workload to Kubernetes"
server {
  private_ip = "10.0.1.2"
  hostname = "web-1"
}
```
