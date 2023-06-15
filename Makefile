run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

next:
	bundle exec jekyll serve --config _config.yml,_config-2023.2.yml
