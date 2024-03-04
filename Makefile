run:
	~/.rbenv/shims/bundle exec jekyll serve

build:
	~/.rbenv/shims/bundle exec jekyll build

clean:
	~/.rbenv/shims/bundle exec jekyll clean

deploy:
	git push -f deploy master
	
# Only on the server
update:
	git fetch
	git reset --hard HEAD
	git merge '@{u}'

install:
	~/.rbenv/shims/bundle install
