# Laboratorul 5 Shell

## Codul din terminal
```
Welcome to Ubuntu 24.04.1 LTS (GNU/Linux 5.15.167.4-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon Dec 30 17:05:56 EET 2024

  System load:  0.69                Processes:             51   System information as of Mon Dec 30 17:05:56 EET 2024

  System load:  0.69                Processes:             51  
  Usage of /:   0.3% of 1006.85GB   Users logged in:       0   
  Memory usage: 8%                  IPv4 address for eth0: 172.30.160.160
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge     

This message is shown once a day. To disable it please create the
/home/ubb/.hushlogin file.
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web$ cd ubb-itbubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$

ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
type test
test is a shell builtin
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
type [
[ is a shell builtin
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
type type
type is a shell builtin
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=4
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" -lt "0" ] && echo "X is less than zero" \
> || echo "X is greater than zero"
X is greater than zero
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=-1
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" -lt "0" ] && echo "X is less than zero" \
> || echo "X is greater than zero"
X is less than zero
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=0
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "X" = "0" ] && echo "X is the string or number "
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "X" = "0" ] && echo "X is the string or number \0\""
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" = "0" ] && echo "X is the string or number \0\""        
X is the string or number \0"
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" = "0" ] && echo "X is the string or number \"0\""
X is the string or number "0"
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=hello
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" = "hello" ] && echo "X matches the string \"hello\""
X matches the string "hello"
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X="not hello"
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" != "hello" ] && echo "X is not the string \"hello\""
X is not the string "hello"
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
echo $X
not hello
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -n "$X" ] && echo "X is of nonzero length"
X is of nonzero length
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=somefile
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of a real file || echo "No such file: &X""
[1] 605
Command 'X' not found, but can be installed with:
sudo apt install xserver-xorg-core
[1]+  Exit 1                  [ -f "$X" ] && echo "X is the path of a real file || echo "No such file:
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of a real file || echo "No such file: $X"
> ^C
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of a real file" || echo "No 
such file: $X"
No such file: somefile
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=/etc/passwd
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of a real file" || echo "No 
such file: $X"
X is the path of a real file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=/bin/ls
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of a real file" || echo "No such file: $X"
X is the path of a real file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -f "$X" ] && echo "X is the path of an executable file" || ec
ho "No such file: $X"
X is the path of an executable file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=.
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ "$X" -nt "/etc/passwd" ] && echo "X os a file which is newer than etc/passwd"
X os a file which is newer than etc/passwd
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=hello
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -n "$X" ] && echo "$X is a non-zero string"
hello is a non-zero string
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -n "$X" ] && echo "$X is a non-zero string" || echo "$X is the null string"
hello is a non-zero string
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -n "$X" ] && echo "$X is a non-zero string" || echo "$X is the null string"
 is the null string
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ -n "$X" ] && echo "$X is a non-zero string" || echo "X is the null string"
X is the null string
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
Y=bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
X=hello
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
[ $X != $Y ] && echo "$X is not equal to $Y" || echo "$X is equal to $Y"
hello is not equal to bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ 
hello bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ [ "$X" = "hello" -a "Y" = "bye" ] && echo "Proper greetings have been made" || echo "This is not quite polite" 
This is not quite polite
hello bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ [ "$X" = "hello" -a "Y" = "bye" ] && echo "Proper greetings have been made" || echo "This is not quite polite"
This is not quite polite
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ [ "$X" = "hello" -a "$Y" = "bye" ] && echo "Proper greetings have been made" || echo "This is not quite polite"
Proper greetings have been made
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ Y=notbye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ echo $X $Y
hello notbye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi$ [ "$X" = "hello" -a "$Y" = "bye" ] && echo "Proper greetings have been made" || echo "This is not quite polite"
This is not quite polite
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch if.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./if.sh
da
da does not exist
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./if.sh
/etx/passwd
/etx/passwd does not exist
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x if.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./if.sh
/etc/passwd
/etc/passwd is a regular file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./if.sh
/etc
/etc exists, but we don't know what kind of file it is
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch case.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x case.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /etc
/etc is a directory
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /etc/passwd
/etc/passwd is a regular file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /dev/tty1
/dev/tty1 is a character file
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /dev/sda1
Sorry, I don't know anything about /dev/sda1
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: somefile
Sorry, I don't know anything about somefile
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /dev/sdal
Sorry, I don't know anything about /dev/sdal
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./case.sh
Please input a filename: /dev/sda1
Sorry, I don't know anything about /dev/sda1
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch myfor-loop.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop.sh 
Iteratia cu numarul 1
Iteratia cu numarul 2
Iteratia cu numarul 3
Iteratia cu numarul 4
Iteratia cu numarul 5
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x myfor-loop.sh 
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop.sh
Iteratia cu numarul 1
Iteratia cu numarul 2
Iteratia cu numarul 3
Iteratia cu numarul 4
Iteratia cu numarul 5
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch myfor-loop-math.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x myfor-loop-math.sh 
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh
Valoarea lui i este math
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este *
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh ^C
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este case.sh hello.c hello_alex.c if.sh myfor-loop-math.sh myfor-loop.sh printallenv.c printenv.c
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este *
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este case.sh hello.c hello_alex.c if.sh myfor-loop-math.sh myfor-loop.sh printallenv.c printenv.c
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./myfor-loop-math.sh 
Valoarea lui i este math
Valoarea lui i este 1.5
Valoarea lui i este case.sh
Valoarea lui i este hello.c
Valoarea lui i este hello_alex.c
Valoarea lui i este if.sh
Valoarea lui i este myfor-loop-math.sh
Valoarea lui i este myfor-loop.sh
Valoarea lui i este printallenv.c
Valoarea lui i este printenv.c
Valoarea lui i este 2
Valoarea lui i este done
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch while.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod while.sh
chmod: missing operand after ‘while.sh’
Try 'chmod --help' for more information.
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x while.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./while.sh
Introduceti date (bye pentru a iesi din bucla)
da
Ati introdus: da
Introduceti date (bye pentru a iesi din bucla)
saramale
Ati introdus: saramale
Introduceti date (bye pentru a iesi din bucla)
bye
Ati introdus: bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./while.sh
Introduceti date (bye pentru a iesi din bucla)
da
Ati introdus: da
Introduceti date (bye pentru a iesi din bucla)
bye
Ati introdus: bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./while.sh
Introduceti date (bye pentru a iesi din bucla)
yep   
Ati introdus: yep
Introduceti date (bye pentru a iesi din bucla)
bye
Ati introdus: bye
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch while-true.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ open while-true.sh 
Command 'open' not found, but can be installed with:
sudo apt install mailcap    # version 3.70+nmu1ubuntu1, or      
sudo apt install xdg-utils  # version 1.1.3-4.1ubuntu3
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x while-true.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./while-true.sh
Introduceti date (CTRL+C pentru a iesi din bucla)
da
Ati introdus: da
Introduceti date (CTRL+C pentru a iesi din bucla)
sarmale
Ati introdus: sarmale
Introduceti date (CTRL+C pentru a iesi din bucla)
^C
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch while-read.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./while-read.sh 
Please input a filename: somefile
Sorry, I don't know anything about somefile
Please input a filename: (CTR+C to escape)/etc
/etc is a directory
Please input a filename: (CTR+C to escape)/etc/passwd
/etc/passwd is a regular file
Please input a filename: (CTR+C to escape)^C
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch param .sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ rm param
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param
-bash: ./param: No such file or directory
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch param.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param.sh
I was called with 0 parameters
My name is ./param.sh
My nicer name is 'basename ./param.sh'
My first parameter is
My second parameter is
All parameters are
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param.sh
I was called with 0 parameters
My name is ./param.sh
My nicer name is 'basename ./param.sh'
My first parameter is
My second parameter is
All parameters are
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param.sh 1 2 3 4
I was called with 4 parameters
My name is ./param.sh
My nicer name is 'basename ./param.sh'
My first parameter is 1
My second parameter is 2
All parameters are 1 2 3 4
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch param-shift.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param-shift.sh 
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param-shift.sh 1 2 3 4
$1 is 1
$1 is 2
$1 is 3
$1 is 4
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param-shift.sh 1 2 3 4
$1 (first parameter) is 1
$1 (first parameter) is 2
$1 (first parameter) is 3
$1 (first parameter) is 4
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./param-shift.sh 1 2 3 4
$1 (first parameter) is 1
shift executed
$1 (first parameter) is 2
shift executed
$1 (first parameter) is 3
shift executed
$1 (first parameter) is 4
shift executed
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ t^C
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch retur .sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ rm retur
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ touch retur.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ chmod u+x retur.sh
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./retur.sh
somecmd
somecmd has failed!
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./retur.sh
0
0 has failed!
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./retur.sh
/dev/null
/dev/null has failed!
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./retur.sh
[ "0" -gt "1" ]
[ "0" -gt "1" ] has failed!
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$ ./retur.sh
[ "0" -gt "1"] && echo "greater" || echo "less"
less
ubb@DESKTOP-PS905TO:/mnt/c/Users/Admin/Documents/web/ubb-itbi/scripts$
```