run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

# Only on the server
update:
	git fetch
	git reset --hard HEAD
	git merge '@{u}'

install:
	bundle install
	