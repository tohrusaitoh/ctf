##

#--------------------------------------------
# https形式	https://github.com/tohrusaitoh/ctf.git

GH_ID		= tohrusaitoh
GH_PROJECT	= ctf
GH_HTTPS	= https://github.com/$(GH_ID)/$(GH_PROJECT).git

REPOSITORY	= origin
BRANCH		= master

DATE		:= $(shell date +%Y/%m/%d)
HOSTNAME	:= $(shell hostname)
all:		add commit push
		@echo $(GH_HTTPS)
#--------------------------------------------
#		git init $(GH_PROJECT)
#		cd $(GH_PROJECT)
#		git add file...
#		git remote add	   $(REPOSITORY) $(GH_HTTPS)
#		git remote set-url $(REPOSITORY) $(GH_HTTPS)
#		git push $(REPOSITORY) $(BRANCH)
#		git pull $(REPOSITORY) $(BRANCH)
#		git config --global user.name  "John Doe"
#		git config --global user.email "foo@example.com"

add:;		git add -u
commit:;	git commit -m $(DATE)-$(HOSTNAME)
push:;		git push
pull:;		git pull
#--------------------------------------------
