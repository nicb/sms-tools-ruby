#include <stdio.h>
#include <utilFunctions.h>

#define TESTSIZE (7)

int main (){
	
	int n = 0;
	
	double input[] = {-0.03, -0.02, -0.01, 0.00, 0.01, 0.02, 0.03};
	double output[TESTSIZE] = {0.0};
	genbh92lobe_C(input, output, TESTSIZE);

	printf("%d\n", TESTSIZE);

	for(n = 0; n < TESTSIZE; ++n)
		printf("%+13.10g, ", input[n]);
	puts("");

	for(n = 0; n < TESTSIZE; ++n)
		printf("%+13.10g, ", output[n]);
	puts("");

}
