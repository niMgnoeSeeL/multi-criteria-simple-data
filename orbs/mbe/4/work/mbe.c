


#include <stdio.h>









int main(int argc, char *argv[])
{
    int j;
    int k;

    j = (int) strtol(argv[1], NULL, 10);
    k = (int) strtol(argv[2], NULL, 10);

    while (p(j))
    {
        if (q(k))
        {
            k = f1(k);
printf("\nORBS:%d:%d:%s:%d\n", 26, 13, "k", k);

        }
        else
        {
            k = f2(k);
            j = f3(j);
        }
    }

}

int p(int j)
{
    if(j > 0)
    {
        return 1;
    }




}

int q(int k)
{
    if(k < 0)
    {
        return 1;
    }


}

int f1(int k)
{
    return k + 10;
}

int f2(int k)
{
    return k - 2;
}

int f3(int j)
{
    return j - 15;
}





