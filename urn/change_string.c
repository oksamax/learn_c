#include <stdio.h>

void change_string(const char *string)
{
	while(*string) {
		if(' ' == *string) {
			printf("%c",'-');
		}
		else {
			printf("%c", *string);
		}
		string++;
	}
	printf("\n");
}

int main(void)
{
	change_string("your voice is music");

	return 0;
}
