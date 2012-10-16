#include <stdio.h>
#include <stdlib.h>
 
typedef struct elementy{
	int liczba;
	struct elementy *nast;
}el_listy;
 
el_listy *dodaj(el_listy *lista, int n){
	el_listy *wsk, *nowy;
 
	wsk = lista;
 
	nowy = (el_listy*)malloc(sizeof(el_listy));
	nowy->liczba = n;
	nowy->nast = NULL;
 
	if (lista == NULL) wsk = nowy;
	else{
		while (wsk->nast != NULL){
			wsk = wsk->nast;
		}
 
		wsk->nast = nowy;
	}
	return wsk;
}
 
void wypisz(el_listy *wsk){
	while (wsk != NULL){
		printf("%i -> ", wsk->liczba);
		wsk = wsk->nast;
	}
	printf("NULL\n");
}
 
int main(){
	el_listy *pierwszy;
 
	pierwszy = dodaj(NULL, 1);
	wypisz(pierwszy);
 
	pierwszy = dodaj(pierwszy, 2);
 
	wypisz(pierwszy);
 
	return 0;
}
