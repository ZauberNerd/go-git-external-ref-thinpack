module github.com/ZauberNerd/external-ref-thinpack

go 1.17

require github.com/go-git/go-git/v5 v5.4.2

require (
	github.com/acomagu/bufpipe v1.0.3 // indirect
	github.com/go-git/go-billy/v5 v5.3.1 // indirect
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99 // indirect
	golang.org/x/net v0.0.0-20210326060303-6b1517762897 // indirect
)

replace github.com/go-git/go-git/v5 v5.4.2 => ./go-git
