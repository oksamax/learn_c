extern int a;

void sum(int in)
{
	static int b = 200;
	b += a;
	printf("b = %d\n", b);
}
