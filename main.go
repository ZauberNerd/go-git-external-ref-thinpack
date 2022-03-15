package main

import (
	"os"

	"github.com/go-git/go-git/v5/plumbing/format/packfile"
)

func main() {
	file, err := os.Open("./pack-e0abbf18fc2a9d63e6121afd76399f58b79596ad.pack")
	if err != nil {
		panic(err)
	}

	defer file.Close()

	scanner := packfile.NewScanner(file)
	parser, err := packfile.NewParser(scanner)
	if err != nil {
		panic(err)
	}

	_, err = parser.Parse()
	if err != nil {
		panic(err)
	}
}