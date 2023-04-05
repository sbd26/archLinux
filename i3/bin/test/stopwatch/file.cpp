#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <conio.h>

using namespace std;
void swatch(int aa, int bb, int cc){
  ofstream f;
  f.open("/home/bd26/ps/test/output");
  if (f.is_open()){
    cout << "output is opened" << "\n";
  }
  int Hour = aa, Min = bb, Sec = cc;
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
  string h;
  int m;
  int s;
  ifstream myfile;
  myfile.open("/home/bd26/ps/test/output");
  vector<int> ans;
  if ( myfile.is_open()){
    cout << "File Opened Successfulluy " << "\n";
    int i = 1;
    while (myfile){
      getline(myfile, h);
      if ( h.size() == 2 && i <= 3){
        int a = h[0] - '0';
        int b = h[1] - '0';
        int abcd = a*10 + b;
        ans.push_back(abcd);
      }
      if ( h.size() == 1 && i <= 3){
        int a = h[0] - '0';
        ans.push_back(a);
      }  
      i++;
    }

  }
  for (int i = 0; i < ans.size(); i++){
    cout << ans[i] << "\n";
  }
  swatch(ans[2], ans[1], ans[0]);

  return 0;
}
