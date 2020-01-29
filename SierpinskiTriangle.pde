int triangleCount = 500;
boolean triangleBool = false;
public void setup()
{
	size(500,500);
	background(0);
	fill(random(255), random(255), random(255));
}
public void draw()
{
	background(0);
	sierpinskiT(0, 500, 500);
	// sierpinskiS(250, 250, 500);

	if(triangleBool = true && triangleCount > 10){
		triangleCount -= 10;
	}else if(triangleBool = false && triangleCount < 500){
		triangleCount += 10;
	}
}
public void mousePressed()
{
	if((mouseButton == LEFT)){
		triangleBool = true;
	}else if((mouseButton == RIGHT)){
		triangleBool = false;
	}
}
public void sierpinskiT(int x, int y, int len) 
{
	if(len <= triangleCount){
		triangle(x, y, x + len, y, x + len/2, y - len);
	}else {
		// triangle(x, y, x + len/2, y, x + len/4 , y - len/2);
		// triangle(x + len, y, x + len/2, y, x + 3*len/4 , y - len/2);
		// triangle(x + len/2, y - len, x + len/4, y - len/2, x + 3*len/4, y - len/2);
		sierpinskiT(x, y, len/2);
		sierpinskiT(x + len/4, y - len/2, len/2);
		sierpinskiT(x + len/2, y, len/2);
	}
}

public void sierpinskiS(int x, int y, int len){
	if(len <= 20){
		rect(x-len/2, y-len/2, x + len/2, y + len/2);
	}else {
		sierpinskiS(x - len,y + len,len/2);
		sierpinskiS(x - len,y - len,len/2);
		sierpinskiS(x - len,y,len/2);
		sierpinskiS(x + len,y,len/2);
		sierpinskiS(x + len,y + len,len/2);
		sierpinskiS(x + len,y - len,len/2);
		sierpinskiS(x,y - len,len/2);
		sierpinskiS(x,y + len,len/2);
	}	
}