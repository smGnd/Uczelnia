#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define ILOSC 3761
#define podstawa 26

int T[ILOSC];

int haszuj(char* tekst){
	unsigned wynik;
	int dlugosc=strlen(tekst), i;
	wynik=tekst[dlugosc-1];
	for(i=dlugosc-1; i>=0; i--){
		wynik=wynik*podstawa+tekst[i];
		wynik=wynik%podstawa;
	}
	return wynik;
}
	

void czytajplik(){
	FILE *file;
	char bufor[50];
	int i;
	file=fopen("dane.txt", "r");
	
	if(file==NULL) printf("Nie ma takiego pliku.");
	else for(i=0; fscanf(file, "%s", bufor) != EOF; i++) T[i]=haszuj(bufor);
	
	fclose(file);
}

int licz0(){
	int ilosc=0, i;
	for(i=0; i<ILOSC; i++) if (T[i]==0) ilosc++;
	return ilosc;
}

int max(){
	int max=0, i;
	for(i=0; i<ILOSC; i++) if(T[i]>max) max=T[i];
	return max;
}

double srednia(){
	int i;
	double srednia, x=0, y=0;
	for(i=0; i<ILOSC; i++){
		if (T[i]!=0){
			x=x+T[i];
			y++;
		}
	}
	srednia=x/y;
	return srednia;
}

int main(){
	int i;
	for (i=0; i<ILOSC; i++) T[i]=0;
	int zera, maks;
	double sr;
	
	czytajplik();
	zera=licz0();
	maks=max();
	sr=srednia();
	
	printf("Pustych pozycji: %d\n", zera);
	printf("Klucz maksymalny: %d\n", maks);
	printf("Średnia w pozycjach niepustych: %.2lf\n", sr);
	
	return 0;
}
