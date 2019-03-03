/* This file is part of the ORBS distribution.
 * See the file LICENSE.TXT for more information. 
 */
#include <stdio.h>
#include <stdlib.h>

int p(int j);
int q(int k);

int f1(int k);
int f2(int k);
int f3(int j);

int main(int argc, char *argv[])
{
    int j;
    int k;

    j = (int) strtol(argv[1], NULL, 10);
    k = (int) strtol(argv[2], NULL, 10);

    printf("\nORBS:%d:%d:%s:%d\n", 22, 14, "j", j);while (p(j))
    {
        printf("\nORBS:%d:%d:%s:%d\n", 24, 15, "k", k);if (q(k))
        {
            printf("\nORBS:%d:%d:%s:%d\n", 26, 20, "k", k);k = f1(k);printf("\nORBS:%d:%d:%s:%d\n", 26, 13, "k", k);
        }
        else
        {
            printf("\nORBS:%d:%d:%s:%d\n", 30, 20, "k", k);k = f2(k);printf("\nORBS:%d:%d:%s:%d\n", 30, 13, "k", k);
            printf("\nORBS:%d:%d:%s:%d\n", 31, 20, "j", j);j = f3(j);printf("\nORBS:%d:%d:%s:%d\n", 31, 13, "j", j);
        }
    printf("\nORBS:%d:%d:%s:%d\n", 22, 14, "j", j);}
    printf("\nORBS:%d:%d:%s:%d\n", 34, 20, "j", j);                 ;
}

int p(int j)
{
    printf("\nORBS:%d:%d:%s:%d\n", 39, 8, "j", j);if(j > 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

int q(int k)
{
    printf("\nORBS:%d:%d:%s:%d\n", 51, 8, "k", k);if(k < 0)
    {
                ;
    }

    return 0;
}

int f1(int k)
{
    printf("\nORBS:%d:%d:%s:%d\n", 61, 12, "k", k);return k + 10;
}

int f2(int k)
{
    printf("\nORBS:%d:%d:%s:%d\n", 66, 12, "k", k);return k - 2;
}

int f3(int j)
{
    printf("\nORBS:%d:%d:%s:%d\n", 71, 12, "j", j);return j - 15;
}

int x(int y)
{
            ;
}
