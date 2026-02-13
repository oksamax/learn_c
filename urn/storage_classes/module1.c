#include <stdio.h>

void expt(int, int);

int a = 100;

int main(void)
{
	sum(a);
	sum(a);
	expt(5,4);

	return 0;
}

void expt(register int var, register int n)
{
	register int v1 = var;
	n--;
	while(n>0){
		v1*=var;
		n--;
	}
	printf("5^4 = %d\n",v1);

}
