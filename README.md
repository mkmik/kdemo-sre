# Demo

Set up demo env:
```
$ kubectl create ns prod && kubectl create ns staging
$ ./deploy-and-test.sh prod
...
Hello, Prod!
$ ./deploy-and-test.sh staging
...
Hello, Staging!
```

Upgrade by simply updating the vendored manifest:

```
$  curl -sLf >vendor/kdemo/app.yaml https://github.com/mkmik/kdemo/releases/download/v0.2.0/app.yaml
$ ./deploy-and-test.sh staging
...
I now say: Hello, Staging!
```
