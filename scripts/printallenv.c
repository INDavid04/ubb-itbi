# include <stdio.h>

int main (int argc, char *argvp[], char *envp[]) {
	for (int i = 0; envp[i] != NULL; i++) {
		printf ("%s\n", envp[i]);
	}
	return 0;
}
