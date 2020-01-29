public void setup()
{
	size(500,500);
	background(0);
	fill(random(255), random(255), random(255));
}
public void draw()
{
	background(0);
	sierpinskiT(0, height, height);
	sierpinskiS(250, 250, 150);
}
public void sierpinskiT(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x + len, y, x + len/2, y - len);
	}else {
		sierpinskiT(x, y, len/2);
		sierpinskiT(x + len/4, y - len/2, len/2);
		sierpinskiT(x + len/2, y, len/2);
	}
}

public void sierpinskiS(int x, int y, int len){
	if(len <= 125){
		rect(x - len/2, y - len/2, len, len);
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