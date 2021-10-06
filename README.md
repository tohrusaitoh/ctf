## CTF.git

### tsaitoh が作った CTF 問題サーバのファイル群

CTFの問題の準備
~~~
$ cd public_html
$ git clone https://github.com/tohrusaitoh/ctf.git
~~~

### FileによるCTFもどき

Linux のファイルコマンドに慣れるためのFileによるCTFもどき

ディレクトリへのリンクで無限にディレクトリの中に入るPATH
が仕掛けてあるので tar.gz で配布。
~~~
$ cd /home/
$ sudo tar zxvf ..PATH../ctf/Challenge.tar.gz
~~~

### telnet localhost echo の準備

~~~
((( inetd インストール)))
$ sudo apt-get install inetutils-inetd
$ sudo vi /etc/inetd.conf
echo stream tcp nowait <<USERID>> ..PATH../ctf/inetd-echo.sh

((( inetd 再起動 )))
$ sudo systemctl restart inetutils-inetd

((( 接続実験 )))
$ telnet localhost echo
or $ telnet localhost 7
~~~

