int hit = 0;


void End_Condition(){
 
    if(hit == 1){
       for(heart_times=0; heart_times<2 ; heart_times++){
          image(heart, 670-70*heart_times, 20);
       }
    }
    else if(hit == 2){
       for(heart_times=0 ; heart_times<1 ; heart_times++){
          image(heart, 670+70*heart_times, 20);
       }
    }
    else if(hit == 3){
       Using_keyboard = false;
       
       image(imgBG,0,0);
       image(sad_earth,310,310);    
       image(restart,350,500);          //60dpi
       
       textSize(80);
       text("GAME   OVER",110,270);
       textSize(50);      
       text("Score : " + score,110,700);
     
       Left_x = -60;
       Left_y = 350;
       Right_x = 750;
       Right_y = 350;
       Top_x = 350;
       Top_y = -60;
       Bottom_x = 350;
       Bottom_y = 750;
       
       music_game.pause();
       music_lose.play();
    }
    else{
       for(heart_times=0 ; heart_times<3 ; heart_times++){
          image(heart, 670-70*heart_times, 20);
       }
    }
    
}
