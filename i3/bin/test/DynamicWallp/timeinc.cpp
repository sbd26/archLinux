#include <iostream>  
#include <stdio.h>
#include <ctime>  
#include <stdlib.h>
#include <cstdlib>
#include <unistd.h>
using namespace std;


int main()  
{  
  time_t now = time(0); // get current date and time  
  tm* ltm = localtime(&now);  
  int curhour = ltm->tm_hour;

  //feh --bg-scale ~/Pictures/WallP/Others/1.jpg'
  while (1){
  if ( curhour >= 6 && curhour <= 12 ){
    system("feh --bg-scale ~/Pictures/WallP/Others/1.jpg");
  }
  else if ( curhour >= 13 && curhour <= 16 ){
     system("feh --bg-scale ~/Pictures/WallP/Others/2.jpg");
  }
  else if ( curhour >= 17 && curhour <= 19){
     system("feh --bg-scale ~/Pictures/WallP/Others/3.jpg");
  }
  else
     system("feh --bg-scale ~/Pictures/WallP/Others/4.jpg");
  sleep(10);
  }


  return 0;
}  
