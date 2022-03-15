# Go Git reproducer

This repository reproduces a bug in go-git that fails when parsing a packfile
with external ref-delta:

```shell
$ go run main.go
panic: reference delta not found

goroutine 1 [running]:
main.main()
        /home/ubuntu/external-ref-thinpack/main.go:25 +0x159
exit status 2
```

The packfile is taken from an internal clone of https://github.com/gradle/wrapper-validation-action on GHES.
