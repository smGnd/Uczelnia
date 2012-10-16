#include <stdio.h>
#include <stdlib.h>

void pobierz(char *zmienna){
	printf("%s:\n%s\n\n\n",zmienna, getenv(zmienna));
}

void ustaw(char *zmienna, char *wartosc){
	//putenv(zmienna);
	setenv(zmienna, wartosc, 1);
}

int main(){
	int a, b=1;
	char zmienna[10], wart[50];
	while (b==1){
		printf("Co chcesz zrobic?\n1: pobierz zmienna srodowiskowa\n2: ustaw zmienna srodowiskowa\n3: zamknij program\nTwoj wybor: ");
		scanf("%d", &a);
		switch(a){
			case 1:
				printf("Podaj nazwe zmiennej srodowiskowej: ");
				scanf("%s", zmienna);
				pobierz(zmienna);
				break;
			case 2:
				printf("Podaj nazwe zmiennej srodowiskowej: ");
				scanf("%s", zmienna);
				printf("Podaj jej wartosc: ");
				scanf("%s", wart);
				ustaw(zmienna, wart);
				break;
			case 3:
				b=0;
				break;
			default:
				printf("Zly wybor\n\n");
				break;
		}
	}
		printf("zakonczono dzialanie programu\n");
				
	return 0;
}
