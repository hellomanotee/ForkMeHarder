class Platform{
  
 int Xpos;
 int Ypos;
 int Rwidth;
 int Hwidth;
 boolean PlatCheck;
 
 
  
  Platform(int _x, int _y, int _w, int _h){
    
 Xpos = _x;
 Ypos = _y;
 Rwidth = _w;
 Hwidth = _h;
 
  }
  
    Platform(){
    
 Xpos = 0;
 Ypos = 0;
 Rwidth = 0;
 Hwidth = 0;
 
  }
  
  void display(){
  // noStroke();
    rect(Xpos, Ypos, Rwidth, Hwidth); 
    
  }
  
  void check(){
   
   if (((plyr.xPos + 30) > Xpos) && (plyr.xPos < (Xpos + Rwidth)) &&((plyr.yPos + 30) >= Ypos) && (plyr.yPos < Ypos) ){
    
   if  ( plyr.yVel > 0){
     plyr.yVel = 0;
   }
   
    plyr.yPos = Ypos - 30;
    PlatCheck = true;

   }else{
     PlatCheck = false;
   }

}

}
