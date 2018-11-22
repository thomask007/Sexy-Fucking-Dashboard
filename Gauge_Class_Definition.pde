
class Gauge {
  
  // Member variables related to displaying the parameter
  float minimum;
  float maximum;
  float current_value;
  String units;
  
  //Displaying member variables
  float gauge_posx;
  float gauge_posy;
  float diameter;

  // Function that reads and sets current value
  void Read_current_value (float x)
  {
    if (x > minimum && x < maximum)
    current_value=x;
  }
  
  // Function that draws gauge on the screen
  void Draw_Gauge ()
  {
    //Creates a white circle then a black circle that's slightly smaller
    fill(255);
    ellipse (gauge_posx, gauge_posy, diameter, diameter);
    fill(0);
    ellipse(gauge_posx, gauge_posy, diameter-10, diameter-10);
    //Write text under circle
    fill(255);
    textSize(14);
    text(units, gauge_posx-diameter/8, gauge_posy+diameter/2+(diameter/10)); 
    textSize(56);
    text((int)current_value, gauge_posx- diameter/5, gauge_posy +diameter/6);
  }
}

void setup()
{
  //Prepares Screen
size(800,800);
background(0);


Gauge steve = new Gauge();
steve.minimum = 40;
steve.maximum = 70;
steve.Read_current_value(69.0);
println(steve.current_value);
steve.gauge_posx=300;
steve.gauge_posy=500;
steve.units="Esketit";
steve.diameter= 200;
steve.Draw_Gauge();
}
