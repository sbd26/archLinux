#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <fstream>
using namespace std;



int main(){

  ofstream f;
  f.open("/home/bd26/ps/test/output",ios::in);
  if ( f.is_open()){
    cout << "Opend " << endl;
  }
  else
    cout << "Not Opend" << endl;


  return 0;
}
