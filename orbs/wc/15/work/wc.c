
int isletter(char c);
int main(int argc, char *argv[])
{


    int inword;

    char c;



    while (scanf("%c", &c) == 1)
    {





        if (isletter(c))
        {





        }
        else
        {
            inword = 0;
printf("\nORBS:%d:%d:%s:%d\n", 30, 13, "inword", inword);

        }
    }
}
int isletter(char c)
{

    if (((c >= 'A') && (c <= 'Z'))
        || ((c >= 'a') && (c <= 'z')))
    {
        return 1;
    }

    {
        return 0;
    }
}