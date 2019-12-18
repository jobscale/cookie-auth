#### run with container

```bash
git clone https://github.com/jobscale/cookie-auth.git
cd cookie-auth
main() {
  docker build . -t local/cookie-auth:0.0.1
  docker run --rm --name cookie-auth -p 80:80 -d local/cookie-auth:0.0.1
  http_proxy= curl -v 127.0.0.1
} && main
```
