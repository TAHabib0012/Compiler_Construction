#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 0, sum = 0;


    for(int i = 1; i <= 100; i++)
    {
        sum = sum + i;
    }

    printf("%d\n", sum);

    return 0;
}
