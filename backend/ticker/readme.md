```
docker build -t test-ticker .
docker run -it --rm --name ticker-app test-ticker


```

```
빌드
$env:GOOS = 'linux'
$env:GOARCH = 'amd64'
go build -o bin/ticker main.go

go build -o bin/hello hello/hello.go

```

```
실행
nohup ticker    > ticker.out &
nohup ticker test   > ticker.out &
```