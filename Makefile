run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

deploy: build
	rsync -av --delete _site/ deploy@pkroger.com:pkroger.com/

.PHONY: docs

# Don't use this now, the Public folder was deleted and some symlinks are missing
#rsync -aLv --delete --delete-excluded --exclude .DS_Store ~/Dropbox/Aulas/Public/ deploy@pkroger.com:public/
# docs:
# 	rsync -aLv --exclude .DS_Store ~/Dropbox/Aulas/Public/ deploy@pkroger.com:public/
