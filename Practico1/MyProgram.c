#include <stdio.h>
int res;
extern int inc_y();
int main(void){
  res =inc_y();
  printf("%i\n",res );
}
