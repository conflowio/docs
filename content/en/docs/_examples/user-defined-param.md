The `hostname_index` user-defined parameter will contain the value `"1"`.

```conflow
server {
  private_ip = "10.0.1.2"
  hostname = "web-1"
  
  hostname_index := str_trim_prefix(self.hostname, "web-")
}
```
