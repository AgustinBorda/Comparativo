#include <string>
#include <iostream>
using namespace std;
class Padre {
public:
  string yoSoy() {
    return "Padre";
  }

 void quienSoy() {
    cout <<"padre:"<< yoSoy() << endl;
  }
};

class Hijo : public Padre {
public:
  string YoSoy() {
    return "Hijo";
  }

  void quienSoy() {

    cout <<"hijo:"<< yoSoy() << endl;
  }
};

int main() {
  Hijo* h1 = new Hijo();
  h1 -> quienSoy();
  Padre* p = new Padre();
  p -> quienSoy();
  Padre* h = new Hijo();
  h -> quienSoy();
  delete(h1);
  delete(p);
  delete(h);
}
