
int isletter(char c);
int main(int argc, char *argv[])
{


    int inword;

    char c;

    inword = 0;

    while (scanf("%c", &c) == 1)
    {





        if (isletter(c))
        {

printf("\nORBS:%d:%d:%s:%d\n", 22, 17, "inword", inword);

            {

                inword = 1;
            }
        }
        else
        {
            inword = 0;
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