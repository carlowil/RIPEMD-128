GCC = g++
NAME = rd128
REPO = ripemd128-builds
VER = $(ver)
NEXUS_CREDS = $(nexus_credentials)

all: rebuild publish

build:
	$(GCC) $(NAME).cpp -o $(NAME).out

rebuild: clean build

publish: publish_test publish_prod

publish_test:
	curl -v -u $(NEXUS_CREDS) --upload-file $(NAME).out http://localhost:8081/repository/ripemd128-builds/releases/test/$(VER)/$(NAME)-test.out

publish_prod:
	curl -v -u $(NEXUS_CREDS) --upload-file $(NAME).out http://localhost:8081/repository/ripemd128-builds/releases/prod/$(VER)/$(NAME)-prod.out

clean:
	rm -f *.out
