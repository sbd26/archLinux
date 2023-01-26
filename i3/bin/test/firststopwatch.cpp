#include <iostream>
#include <fstream>
#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif
#include <cstdlib>
#include <conio.h>
using namespace std;

void swatch(){
  ofstream f;
  f.open("output");
  int Hour = 0, Min = 0, Sec = 0;
  while (!kbhit()){
    Sec++;
    sleep(1);
    if ( Sec > 59){
      Min++;
      Sec = 0;
    }

    if ( Min > 59 ){
      Hour++;
      Min = 0;
    }
    clrscr();
    cout << "HH: MM : SS" << endl;
    cout << Hour << " : " << Min << " : " << Sec << endl;
  }
  cout << "After Pause Time is : " << Hour << " " << Min << " " << Sec << endl;
  f << Sec << endl;
  f << Min << endl;
  f << Hour << endl;
}


int main(){
  
  swatch();

  return 0;
}

