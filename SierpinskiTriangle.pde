int triangleLayers = 500;

public void setup()
{
	size(500,500);
	background(0);
	fill(random(255), random(255), random(255));
}
public void draw()
{
	background(0);
	sierpinski(0, height, height);
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= triangleLayers){
		triangle(x, y, x + len, y, x + len/2, y - len);
	}else {
		sierpinski(x, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
		sierpinski(x + len/2, y, len/2);
	}
}
public void keyPressed(){
	if(keyCode == UP && triangleLayers > 5){
		triangleLayers /= 3;
	}
	if(keyCode == DOWN && triangleLayers < 500){
		triangleLayers *= 3;
	}
}