Particle[] bigBang;

void setup(){
	size(500,500);
	bigBang = new Particle[9000];
	for(int i = 0; i < bigBang.length; i ++){
		bigBang[i] = new NormalParticle();
	} 
	bigBang[998] = new OddballParticle(); 
	bigBang[999] = new JumboParticle();
}
void draw(){
	background(0);
	for(int i = 0; i < bigBang.length; i++){
		bigBang[i].show();
		bigBang[i].move();
	}
}
void moussePressed(){
	redraw();
}

class NormalParticle implements Particle{
	double myX, myY, myAngle, mySpeed; 
	NormalParticle(){
		myAngle = Math.random()* 3 * Math.PI;
		mySpeed = Math.random()* 10;
		myX = 250;
		myY = 250;
	}
	void move(){
		myX = Math.cos(myAngle) * mySpeed + myX;
		myY = Math.sin(myAngle) * mySpeed + myY;
	}
	void show(){
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		rect((int)myX, (int)myY, 2,2);
	}
}
interface Particle{
	public void show();
	public void move();
}
class OddballParticle implements Particle{
	int mySize, myX, myY;
	OddballParticle(){
		mySize = 30;
		myX = 250;
		myY = 250;
	}
	void move(){
		myX = (int)(Math.random()* 20) - myX;
		myY++;
	}
	void show(){
		fill(20);
		ellipse(myX,myY, mySize,mySize);
	}
}

class JumboParticle implements Particle{
	double myX, myY, myAngle, mySpeed; 
	JumboParticle(){
		myAngle = Math.random()* 3 * Math.PI;
		mySpeed = Math.random()* 10;
		myX = 250;
		myY = 250;
	}
	void move(){
		myX = Math.cos(myAngle) * mySpeed + myX;
		myY = Math.sin(myAngle) * mySpeed + myY;
	}
	void show(){
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect((int)myX, (int)myY, 40,40);
	}
}