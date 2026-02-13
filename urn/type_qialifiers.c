#include <stdio.h>

void test(int *ptr1, int *ptr2, int *restrict ptr3)
{
	*ptr1 += *ptr3;
	*ptr2 += *ptr3;

	printf("*f_ptr1 = %d\n", *ptr1);
	printf("*f_ptr2 = %d\n", *ptr2);
}


int main(void)
{
	int const a = 10, c = 11;
	int b = 5;
	const int *ptr1 = &a;
	int *const ptr2 = &b;
	const int *const ptr3 = &c;

	printf("a = %d\n", a);
	ptr1 = &b;
	printf("*ptr1 = %d\n", *ptr1);
	printf("b = %d\n", b);
	*ptr2 = 12;
	printf("b = %d\n", b);
	printf("*ptr3 = %d\n", *ptr3);

	int volatile z = 10;
	if (15 == a) {
		printf("a = 15\n");
	} 
	else {
		printf("a != 15\n");
	}

	int q = 100, e = 200, o = 33;

	test(&q, &e, &o);

	return 0;
}
