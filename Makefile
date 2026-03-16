.PHONY: all index.html

all: index.html

# build using spec-generator but not local bikeshed
index.html: index.bs
	curl https://www.w3.org/publications/spec-generator/ -F file=@index.bs -F type=bikeshed-spec -F output=error
	curl https://www.w3.org/publications/spec-generator/ -F file=@index.bs -F type=bikeshed-spec -F die-on=nothing > index.html | tee
