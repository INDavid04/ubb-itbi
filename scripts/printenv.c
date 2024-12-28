# include <stdio.h>

int main (int argc, char *argvp[], char *envp[]) {
	printf ("Prima variabila de mmediu este %s\n", envp[0]);
	return 0;
}
