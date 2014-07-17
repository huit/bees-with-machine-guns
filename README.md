# Quickstart

This cloudformation template launches a "Bees with Machine Guns" (see https://github.com/newsapps/beeswithmachineguns) cluster of load generators into AWS which hit single URL and generate load on a website.

To launch, edit the launch script `bin/attack.sh` with the details of your AWS account and environment. Once ready, launch from the command ala

```
$ ./bin/attack.sh http://mysite/mypath
```

and let the havoc commence!