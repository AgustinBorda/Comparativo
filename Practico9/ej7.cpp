#include <string>
#include <iostream>
class A {
public:
  void escribir() {
    std::cout << "A" << "\n";
  }
  int dummy() {
    return 0;
  }
};

class B : virtual public A {
public:
  void escribir() {
    std::cout << "B" << "\n";
  }
};

class C : virtual public A {
public:
  void escribir() {
    std::cout << "C" << "\n";
  }
};

class D : public B, public C {

};

int main() {
  D* d = new D();
  d -> C::escribir();
  d -> dummy();
  return 0;
}
