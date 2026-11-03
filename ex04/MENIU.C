/*
 * Problema 4 - programul MENIU
 * Creati un program "MENIU" care returneaza una din valorile: 0, 1, 2, 3.
 */

#include <stdio.h>

int main(void)
{
   int optiune;

    printf("1 - Creare fisier\n");
    printf("2 - Sortare fisier\n");
    printf("3 - Afisare fisier\n");
    printf("0 - Iesire\n");

    printf("Alegeti optiunea: ");
    scanf("%d", &optiune);

    return optiune;
}
