#include <stdio.h>

int main(void)
{
	printf("sizeof(char) = %ld\n", sizeof(char));
	printf("sizeof(int) = %ld\n", sizeof(int));
	printf("sizeof(float) = %ld\n", sizeof(float));
	printf("sizeof(double) = %ld\n", sizeof(double));
	printf("sizeof(long int) = %ld\n", sizeof(long int));
	printf("sizeof(long long int) = %ld\n", sizeof(long long int));
	printf("sizeof(long double) = %ld\n", sizeof(long double));
	printf("sizeof(void) = %ld\n", sizeof(void));

	return 0;
}
