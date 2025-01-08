//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here

var fireworkX = 20;
var circley=350;
var firey=317;
var fire2y=342;
var fireSize=40;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
  frameRate(45);
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
  
    
  }
  
  //🎯Animation Code Goes Here
  rect(fireworkX, 15, 10, 10);
  fill(255,255,255,150);
  ellipse(175,circley,fireSize,fireSize)
  ellipse(105,firey,fireSize,fireSize)
  ellipse(301,fire2y,fireSize,fireSize)
  fireworkX = fireworkX + 1;
  
  circley=circley -1.5 
  firey=firey-1
  fire2y=fire2y-1
  fireSize=fireSize +.4
  
  if(circley<0){
    circley=350;
    firey=317;
    fire2y=342;
    fireSize=40;
    
    }
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
