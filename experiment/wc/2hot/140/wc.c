#include <stdio.h>
int isletter(char c);
int main(int argc, char *argv[])
{
    int characters;
    int lines;
    int inword;
    int words;
    char c;
    characters = 0;printf("\nORBS:%d:%d:%s:%d\n", 10, 5, "characters", characters);
    inword = 0;printf("\nORBS:%d:%d:%s:%d\n", 11, 5, "inword", inword);
    words = 0;printf("\nORBS:%d:%d:%s:%d\n", 12, 5, "words", words);
    printf("\nORBS:%d:%d:%s:%d\n", 13, 25, "c", c);while (scanf("%c", &c) == 1)
    ;

















                                                    
}
int isletter(char c)
{
    printf("\nORBS:%d:%d:%s:%d\n", 36, 19, "c", c);printf("%c ", c); // slice here
    printf("\nORBS:%d:%d:%s:%d\n", 37, 11, "c", c);if (((c >= 'A') && (c <= 'Z'))
        || ((c >= 'a') && (c <= 'z')))
    {
        return 1;
    }
    else
    {
                ;
    }
}