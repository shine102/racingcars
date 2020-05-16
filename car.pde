void setup()
{
  size(600,600);
  fill(123);
};
var xPos1 = 10;
var yPos1 = 180;

var xPos2 = 10;
var yPos2 = 280;

var xPos3 = 10;
var yPos3 = 400;

var xStone1 = random(150, 500);
var yStone1 = random(200, 400);

var xStone2 = random(150, 500);
var yStone2 = random(200, 400);

/*phần mở đầu*/
//starting screen (tên trò chơi, mô tả cơ bản, nút start)
draw = function () {
background(171, 236, 245);
fill(106, 117, 69);
textSize(50);
text("RACING CAR", 150, 300);
fill(21, 77, 10);
textSize(25);
text("Just click START, then enjoy the show", 100, 360);
noFill();
rect(250,400,100,100);
fill(255, 0, 0);
textSize(30);
text("START", 255, 450);


//nhấn vào để bắt đầu

mouseClicked = function() {
   if (mouseX>= 250 && mouseX<=350 && mouseY>=400 &&mouseY<=500) {
       draw = function () {
            /* background, nền xanh lá + xanh dương, đường đua, có mây bay, mặt trời*/
            //nền xanh
            background(162, 224, 126);

            //đường đua
            stroke(0, 0, 0);
            fill(227, 232, 223);
            rect(0, 150 , 600, 300 );

            //vach dick
            strokeWeight(5);
            line(590,150,590,450);

            //sky eiiii
            fill(171, 236, 245);
            noStroke();
            rect(0, 0, 600, 150);

            //sun
            fill(237, 77, 14);
            ellipse(500, 50, 50, 50);

            //cloud
            var cloud = function (x, y) {
                fill(255, 255, 255);
                ellipse(x, y, 50, 40);
                ellipse(x+30, y, 30, 30);
                ellipse(x-30, y, 30, 30);
            };
            cloud(100,60);
            cloud(200,50);
            cloud(400, 80);
            cloud(500, 95);

            // Stone
            var drawStone = function(x,y){
                fill(140, 150, 160);
                ellipse(x,y,30,30);
            };
            drawStone(xStone1,yStone1);
            drawStone(xStone2,yStone2);

            // 3 cars

            //xe 1
            var drawCar1 = function () {

                // than xe
                fill(150, 240, 23);
                rect(xPos1, yPos1, 100, 20 );
                rect(xPos1 + 15, yPos1 - 22, 70, 40);
                // draw the wheels
                fill(77, 66, 66);
                ellipse(xPos1 + 25, yPos1 + 21, 24, 24);
                ellipse(xPos1 + 75, yPos1 + 21, 24, 24);
                // chien thang n move
                if (xPos1 <= 600) {
                    xPos1 += random(1, 10);
                }
                else {
                  textSize(20);
                  background(255,255,255);
                  text("Car 1 has won !!!", 250, 250);
                  exit();
                }
                yPos1 += random(-5, 5);

                // dieu kien va cham voi stone
                if(xPos1 + 100 >= xStone1 - 15 && yPos1 + 30 >= yStone1 - 15 && xPos1 <= xStone1 + 15 && yPos1 <= yStone1 + 15 ) {
                    fill(255,255,255);
                    ellipse(xPos1, yPos1, 80, 80);
                    xPos1 = -1000;
                }
                if(xPos1 + 100 >= xStone2 + 15 && yPos1 + 30 >= yStone2 - 15 && xPos1 <= xStone2 + 15 && yPos1 <= yStone2 + 15 ) {
                    fill(255,255,255);
                    ellipse(xPos1, yPos1, 80, 80);
                    xPos1 = -1000;
                }

                // dieu kien va cham xe khac
                //voi xe 2 (only, vi muon qua xe 2 toi xe 3 hau nhu k xay ra)
                if (xPos1 + 100 >= xPos2 && yPos1 + 30 >= yPos2) {
                    fill(255,255,255);
                    ellipse(xPos1 + 20, yPos1 + 20, 80, 80);
                    xPos1 = -1000;
                    xPos2 = -1000;
                }

            };
            drawCar1();

            // xe 2
            var drawCar2 = function () {

                // than xe
                fill(240, 150, 69);
                rect(xPos2, yPos2, 100, 30 );
                rect(xPos2 + 15, yPos2 - 22, 70, 40);
                // draw the wheels
                fill(77, 66, 66);
                ellipse(xPos2 + 25, yPos2 + 30, 24, 24);
                ellipse(xPos2 + 75, yPos2 + 30, 24, 24);
                // chien thang n move
                if (xPos2 <= 600) {
                    xPos2 += random(1, 10);
                }
                else {
                  background(255,255,255);
                  textSize(20);
                  text("Car 2 has won !!!", 250, 250);
                  exit();
                }
                yPos2 += random(-5, 5);

                 // dieu kien va cham voi stone
                if(xPos2 + 100 >= xStone1 + 15 && yPos2 + 30 >= yStone1 - 15 && xPos2 <= xStone1 + 15 && yPos2 <= yStone1 + 15 ) {
                    fill(255,255,255);
                    ellipse(xPos2, yPos2, 80, 80);
                    xPos2 = -1000;
                }
                if(xPos2 + 100 >= xStone2 + 15 && yPos2 + 30 >= yStone2 - 15 && xPos2 <= xStone2 + 15 && yPos2 <= yStone2 + 15) {
                    fill(255,255,255);
                    ellipse(xPos2, yPos2, 80, 80);
                    xPos2 = -1000;
                }

                // dieu kien va cham xe khac
                //voi xe 3
                if (xPos2 + 100 >= xPos3 && yPos2 + 30 >= yPos3) {
                    fill(255,255,255);
                    ellipse(xPos2 + 20, yPos2 + 20, 80, 80);
                    xPos3 = -1000;
                    xPos2 = -1000;
                }
            };
            drawCar2();

            // xe 3
            var drawCar3 = function () {

                // than xe
                 fill(250, 10, 123);
                rect(xPos3, yPos3, 99, 23 );
                rect(xPos3 + 15, yPos3 - 25, 70, 44);
                // draw the wheels
                fill(77, 66, 66);
                ellipse(xPos3 + 25, yPos3 + 21, 24, 24);
                ellipse(xPos3 + 75, yPos3 + 21, 24, 24);
                // chien thang n move
                if (xPos3 <= 600) {
                    xPos3 += random(1, 10);
                }
                else {
                  textSize(20);
                  background(255,255,255);
                  text("Car 3 has won !!!", 250, 250);
                  exit();
                }
                yPos3 += random(-5, 5);
                // dieu kien va cham voi stone
                if(xPos3 + 100 >= xStone1 + 15 && yPos3 + 30 >= yStone1 - 15 && xPos3 <= xStone1 + 15 && yPos3 <= yStone1 + 15) {
                    fill(255,255,255);
                    ellipse(xPos3, yPos3, 80, 80);
                    xPos3 = -1000;
                }
                if(xPos3 + 100 >= xStone2 + 15 && yPos3 + 30 >= yStone2 - 15 && xPos3 <= xStone2 + 15 && yPos3 <= yStone2 + 15) {
                    fill(255,255,255);
                    ellipse(xPos3, yPos3, 80, 80);
                    xPos3= -1000;
                }
            };
            drawCar3();

              if (xPos1<0 && xPos2<0 && xPos3<0){
                  background(255,255,255);
                  textSize(30);
                  text("All cars have banished :<", 200,250);
                  exit();
              }

   };
}
};
};
