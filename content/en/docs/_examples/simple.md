```conflow
web_cluster cluster {
  type = "private"

  web_1 server {
    private_ip = "10.0.1.1"
    hostname = "web-1"
  }
  
  web_2 server {
    private_ip = "10.0.1.2"
    hostname = "web-2"
  }
}
```
