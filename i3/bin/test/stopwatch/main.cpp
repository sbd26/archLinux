#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;




int main(){
  cout << "Want to Clear output File: ";
  char anschar;
  cin >> anschar;
  if ( anschar == 'y'){
    system("rm ~/ps/test/output");
    system("touch ~/ps/test/output");
    for (int i =0; i < 3; i++){
      system("echo 0 >> ~/ps/test/output");
    }
  }
  system("stopwatchfile");
  while (1){
    char ans;
    cout << "Wanna run Again : " ;
    cin >> ans;
    if ( ans == 'y'){
       cout << "Want to Clear output File: ";
  char anschar;
  cin >> anschar;
  if ( anschar == 'y'){
    system("rm ~/ps/test/output");
    system("touch ~/ps/test/output");
    for (int i =0; i < 3; i++){
      system("echo 0 >> ~/ps/test/output");
    }
  }
      system("stopwatchfile");
    }
    else{
      break;
    }
  }

  return 0;
}
