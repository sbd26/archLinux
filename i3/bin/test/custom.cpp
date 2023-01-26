#include <iostream>
#include <stdlib.h>
#include <stdio.h>
using namespace std;




int main(){
  while(1){
  string s;
  getline(cin, s);
  if ( s == "exit"){
    system("killall a.out");
  }
  const char *command = s.c_str();
  system(command);
  }



  return 0;
}
