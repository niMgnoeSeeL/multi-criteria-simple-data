

#include <stdbool.h>
bool p(int i);
bool q(int c);



int main(int argc, char *argv[])
{
    int i;
    int c;

    i = atoi(argv[1]);
    c = atoi(argv[2]);

    while (p(i))
    {
        if (q(c))
        {

            c = g();
        }
        i = h(i);
    }

}
bool p(int i)
{
    if (i > 0)
    {
        return true;
    }

    {
        return false;
    }
}
bool q(int i)
{

printf("\nORBS:%d:%d:%s:%d\n", 41, 9, "i", i);
if (i < 0)
    {
        return true;
    }

    {
        return false;
    }
}
int h(int i)
{
    return i - 1;
}




int g()
{
    return 100;
}