# Demo

```
$ ./deploy-and-test.sh prod
...
Hello, Prod!
$ ./deploy-and-test.sh staging
...
Hello, Staging!
$  curl -sLf >vendor/kdemo/app.yaml https://github.com/mkmik/kdemo/releases/download/v0.2.0/app.yaml
$ ./deploy-and-test.sh staging
...
I now say: Hello, Staging!
