#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
bool p(int i);
bool q(int c);
int h(int i);
int f();
int g();
int main(int argc, char *argv[])
{
    int i;
    int c;
    int x;
    i = atoi(argv[1]);
    c = atoi(argv[2]);
    x = atoi(argv[3]);
    while (p(i))
    {
        if (q(c))
        {
            x = f();
            c = g();
printf("\nORBS:%d:%d:%s:%d\n", 22, 13, "c", c);

        }
        i = h(i);
    }
    printf("%d\n", x); // slice here
}
bool p(int i)
{
    if (i > 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}
bool q(int i)
{
    if (i < 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}
int h(int i)
{
    return i - 1;
}
int f()
{
    return -100;
}
int g()
{
    return 100;
}