BINARY=cos-storage

VERSION=0.1.0

BUILD=`date +%FT%T%z`

default:
	go build -o ${BINARY}  -tags=jsoniter

install:
	dep ensure

dev:
	go run main.go

# Cleans our project: deletes binaries
clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi

.PHONY:  clean
