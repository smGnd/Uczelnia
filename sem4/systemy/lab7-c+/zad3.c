#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[]){
	FILE *f = fopen(argv[1], "r");

	if (f == NULL){
		perror(argv[1]);
	}else{
		execv(argv[1], &argv[1]);
	}

	return 0;
}