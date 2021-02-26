.PHONY: all index.html

all: index.html

# build using api.csswg.org but not local bikeshed
index.html: index.bs
	curl https://api.csswg.org/bikeshed/ -F file=@index.bs -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@index.bs -F force=1 > index.html | tee
