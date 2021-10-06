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

use-the-strings:	use-the-strings.c
	gcc    -O2 -o use-the-strings     use-the-strings.c
	gcc -g -O2 -o use-the-strings-gdb use-the-strings.c

sql-injection-database.db:	sql-injection-database.sql
	sqlite3 sql-injection-databse.db < sql-injection-database.sql

fib100:
	gcc -DTYPE_INT="long long int" -o fib100-64.out fib100.c
	gcc -DTYPE_INT="int" -o fib100-32.out fib100.c

whitespace:
	ruby whitespace.rb whitespace.ws_.txt
