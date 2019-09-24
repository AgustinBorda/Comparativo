
#include<stdio.h>
  int x;
  void efectosColaterales(){
    x++;
    return;
  }

  int main(){
    efectosColaterales();
    printf("%i\n",x);
    return 0;
  }
