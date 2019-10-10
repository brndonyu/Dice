void setup()
{
	size(300,400);
	noLoop();
}
void draw()
{
	//your code here
	background(173);
	Die gamble = new Die();

}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int dicex,dicey,dotx,doty;
	int total = 0;
	int [] dies = new int [9];
	int i = 0;
	
	Die() //constructor
	{

	//variable initializations here
	roll();
	for(int y = 125; y <= 325; y += 100){
		for(int x = 25; x <= 225; x += 100){
		strokeWeight(2);
		fill(#FFF3D6);
		dicey = y;
		dicex = x;
		rect(dicex,dicey,50,50,10,10,10,10);
		}
	}
	show(i);
	textAlign(CENTER);
	textSize(20);
	fill(0);
	text("You rolled a total of: " + total,150,75);
	
	}
	void roll()
	{
		//your code here
		for(int i = 0;i < dies.length; i++){
			dies[i] = (int)((Math.random()*6)+1);
			total += dies[i];
		}

	}
	void show(int num)
	{
		//your code here
		for(int y = 125; y <= 325; y += 100){
			for(int x = 25; x <= 225; x += 100){
				fill(0);
				if(dies[num] == 1){
					ellipse(x+25,y+25,10,10);

				}else if(dies[num] == 2){
					ellipse(x+15,y+25,10,10);
					ellipse(x+35,y+25,10,10);

				}else if(dies[num] == 3){
					ellipse(x+10,y+10,10,10);
					ellipse(x+25,y+25,10,10);
					ellipse(x+40,y+40,10,10);
				}else if(dies[num] == 4){
					ellipse(x+15,y+15,10,10);
					ellipse(x+15,y+35,10,10);
					ellipse(x+35,y+15,10,10);
					ellipse(x+35,y+35,10,10);
				}else if(dies[num] == 5){
					ellipse(x+10,y+10,10,10);
					ellipse(x+10,y+40,10,10);
					ellipse(x+40,y+10,10,10);
					ellipse(x+40,y+40,10,10);
					ellipse(x+25,y+25,10,10);
				}else if(dies[num] == 6){
					ellipse(x+15,y+10,10,10);
					ellipse(x+15,y+25,10,10);
					ellipse(x+15,y+40,10,10);
					ellipse(x+35,y+10,10,10);
					ellipse(x+35,y+25,10,10);
					ellipse(x+35,y+40,10,10);
				}

				num++;




			}
		}
	}
}
