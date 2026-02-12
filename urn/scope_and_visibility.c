#include <stdio.h>

int global_variable = 200; // decloration in File scope

void sum(int, int); // Function-prototype scope

int main(void)
{
	int local_variable = 100; // declocation in Function scope
	
	sum(global_variable, local_variable);

	{
		int local_variable = 333; // declocation in Block scope
		printf("local_variable = %d\n", local_variable);
	}

	return 0;
}
void sum(int a, int b)
{
	printf("a + b = %d\n", (a + b));
}
