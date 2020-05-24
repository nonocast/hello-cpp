#include <iostream>
using namespace std;

void draw(char tag);

int main(int argc, char *argv[]) {
  char tag;
  cin >> tag;
  draw(tag);
  return 0;
}

void draw(char tag) {
  cout << "  " << tag << endl;
  cout << " " << tag << tag << tag << endl;
  cout << tag << tag << tag << tag << tag << endl;
}