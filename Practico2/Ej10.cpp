#include <iostream>
#include <exception>
using namespace std;
  int main(){
    int n;
    cout << "Ingrese un numero" << '\n';
    cin >> n;
    bool b = false;
    do{
      try{
        if(n ==0){
          throw exception();
        }
        n = 5/n;
        b = false;
      }
      catch(exception& e){
        cout << "Ingrese otro numero" << '\n';
        cin >> n;
        b = true;
      }
    }while(b);
    cout << n << '\n';
  }
