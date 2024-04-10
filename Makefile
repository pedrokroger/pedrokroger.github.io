run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

deploy: build
	rsync -av --delete _site/ deploy@pkroger.com:pkroger.com/

docs:
	rsync -aLv --delete --delete-excluded --exclude .DS_Store ~/Dropbox/Aulas/Public/ deploy@pkroger.com:public/

push-and-deploy:
	git push
	$(MAKE) build
	$(MAKE) deploy
