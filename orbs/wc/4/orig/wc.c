#include <stdio.h>
int isletter(char c);
int main(int argc, char *argv[])
{
    int characters;
    int lines;
    int inword;
    int words;
    char c;
    characters = 0;
    inword = 0;
    words = 0;
    
printf("\nORBS:%d:%d:%s:%d\n", 13, 25, "c", c);
while (scanf("%c", &c) == 1)
    {
        characters = characters + 1;
        if (c == '\n')
        {
            lines = lines + 1;
        }
        if (isletter(c))
        {
            if (inword == 0)
            {
                words = words + 1;
                inword = 1;
            }
        }
        else
        {
            inword = 0;
        }
    
printf("\nORBS:%d:%d:%s:%d\n", 13, 25, "c", c);
}
}
int isletter(char c)
{
    printf("%c ", c); // slice here
    if (((c >= 'A') && (c <= 'Z'))
        || ((c >= 'a') && (c <= 'z')))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}