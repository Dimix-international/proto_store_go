protoc_install:
	choco install protoc

protoc_install_ubu:
	brew install protobuf

install_gen:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28

install_gen_go:
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

generate:
	protoc -I proto proto/user_management/* --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go