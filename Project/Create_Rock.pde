int Left_word = int(random(26));            //Randomly generate letters
int Right_word = int(random(26));
int Top_word = int(random(26));
int Bottom_word = int(random(26));

float Left_x = -60, Left_y = 350;           //The location of the rock
float Right_x = 750, Right_y = 350;
float Top_x = 350,Top_y = -60;
float Bottom_x = 350, Bottom_y = 750;

float Left_speed = random(3);               //Control speed
float Right_speed = random(3);
float Top_speed = random(3);
float Bottom_speed = random(3);


void Create_Left_Rock(){
  image(rock[Left_word],Left_x,Left_y);     //add rock
  
  if(1 < Left_speed){                       //Control speed
    Left_x += Left_speed;
  }
  else{                                     //left_speed < 1
      Left_x += 1.5;
  }
  
  if(Left_x > 260){                         //If hit, return to the initial position
    Left_x = -120;
    Left_speed = random(3);
    Left_word = int(random(26));
    hit ++;
  }
}

void Create_Right_Rock(){
  image(rock[Right_word],Right_x,Right_y);    
  
  if(1 < Right_speed){
    Right_x -= Right_speed;
  }
  else{
      Right_x -= 1.5;
  }
  
  if(Right_x < 440){    
    Right_x = 810;
    Right_speed = random(3);
    Right_word = int(random(26));
    hit ++;
  }
}

void Create_Top_Rock(){
  image(rock[Top_word],Top_x,Top_y);
  
  if(1 < Top_speed){
    Top_y += Top_speed;
  }
  else{
      Top_y += 1.5;
  }

  if(Top_y > 260){ 
    Top_y = -120;
    Top_speed = random(3);
    Top_word = int(random(26));
    hit ++;
  }
}

void Create_Bottom_Rock(){
  image(rock[Bottom_word],Bottom_x,Bottom_y);
  
  if(1 < Bottom_speed){
    Bottom_y -= Bottom_speed;
  }
  else{
      Bottom_y -= 1.5;
  }
  
  if(Bottom_y < 435){ 
    Bottom_y = 810;
    Bottom_speed = random(3);
    Bottom_word = int(random(26));
    hit ++;
  }  
}
