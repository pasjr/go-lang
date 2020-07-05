# Creates the container based on image golang:1.14
FROM golang:1.14

# Define work directory after container start
WORKDIR /go/src/

# Add files from current directory to container
COPY . .

# Enable cross-compilation (linux)
RUN GOOS=linux go build main.go

# Executes the command main after container start
ENTRYPOINT ["./main"]
