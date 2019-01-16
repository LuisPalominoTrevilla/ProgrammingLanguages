#include <stdio.h>

main()
{
float Resistor, current;

printf("Enter the current value:");
scanf("%f", &current);
extern float resistor_fun(float);
Resistor = resistor_fun(current);

printf("The required resistor should be ");
printf("%1.0f Ohms.\n", Resistor);
}
