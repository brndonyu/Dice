void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	strokeWeight(2);
	fill(#FFF3D6);
	rect(50,50,55,55,10,10,10,10);
}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int dicex,dicey;
	int [] dies = new int [9];
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		rect();
		
	}
	void roll()
	{
		//your code here
		for(int i = 0;i < dies.length; i++){
			dies[i] = (int)(Math.random()*6)+1;
		}

	}
	void show()
	{
		//your code here
	}
}
