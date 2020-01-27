public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(random(255), random(255), random(255));
	sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{
	fill(255);
	sierpinski(mouseX, mouseY, 30);
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x + len, y, x + len/2, y - len);
	}else {
		// triangle(x, y, x + len/2, y, x + len/4 , y - len/2);
		// triangle(x + len, y, x + len/2, y, x + 3*len/4 , y - len/2);
		// triangle(x + len/2, y - len, x + len/4, y - len/2, x + 3*len/4, y - len/2);
		sierpinski(x, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
		sierpinski(x + len/2, y, len/2);
	}
}