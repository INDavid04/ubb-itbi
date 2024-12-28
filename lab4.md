# Laboratorul 4 Shell
- Pentru a afisa John_Doe, avand variabila myname=John, scriem `echo ${myname}_Doe`

## Sarcini de laborator

### 2. Folositi comanda read in cadrul unei liste de comenzi care citeste de la tastatura trei intregi si afiseaza suma lor.
```
$ read a b c
$ suma=$(($a + $b + $c))
$ echo $suma
```

### 3. Comanda whoami returneaza ID-ul de utilizator (echivalent cu id -un). Cum puteti folosi aceasta comanda pentru a seta valoarea implicita a unei variabile numita myusername?
```
$ echo ${myusername:- $(whoami)}
```

### 4. Compilati si executati programul hello doar daca compilarea a decurs cu succes. Faceti asta intr-o singura comanda folosind expresii logice.
```
$ cc ./scripts/hello.c -o ./exe/hello; ./exe/hello || echo Am intampinat o eroare!
```

### 5. Modificati programul hello sa citeasca un nume cu scanf (ex. Alex) pe care sa-l salute pe urma cu ajutorul functiei printf (ex. ”Hello, Alex!”). Compilati si executati.
```
# include <stdio.h>
int main () {
	char nume[100];
	scanf("%s", nume);
	printf ("\nHello, %s!\n", nume);
	return 0;
}
```

### 6. Modificati programul printenv de mai sus a.i. sa tipareasca toate variabilele de mediu (N.B. vectorul envp se termina cu NULL). Compilati si executati.
```
# include <stdio.h>
int main (int argc, char *argvp[], char *envp[]) {
	for (int i = 0; envp[i] != NULL; i++) {
		printf ("%s\n", envp[i]);
	}
	return 0;
}
```

### 7. Creati un director bin in care copiati executabilul hello. Adaugati directorul bin (folosind calea absoluta) in variabila $PATH si aratati ca puteti executa simplu cu comanda hello fara a avea nevoie de prefixul ./ .
```
$ mkdir bin
$ cp ./exe/hello ./bin/
$ export PATH=$PATH:./bin
$ echo $PATH
$ hello
$ ./hello
```