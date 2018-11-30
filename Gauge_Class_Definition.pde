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
    //Changes the font to look more digital
    PFont digital = createFont("digital-7.ttf", 12);
    textFont(digital);
    //Write text under circle
    fill(255);
    textSize(14);
    //text(units, gauge_posx-diameter/8, gauge_posy+diameter/2+(diameter/10)); 
    text(units, gauge_posx, gauge_posy+diameter/2 + 10); 
    textAlign(CENTER, CENTER);
    if(diameter < width/7)
    {
      textSize(20);
    }
    else
    {
      textSize(50);
    }
    text((nf(current_value, 2, 1)), gauge_posx, gauge_posy);
    textAlign(CENTER, CENTER);
  }
  
  //Speed Gauge made to change colour depending on the speed
  void Draw_Gauge_Speed ()
  {
    if(current_value > 100)
    {
      fill(200, 0, 0); //Red
    }
    else if(current_value <= 25 && current_value > 0)
    {
      fill(0, 0, 200); //Blue
    }
    else if(current_value > 25 && current_value <= 100)
    {
      fill(0, 200, 0); //Green
    }
    else
    {
      fill(255);
    }
    
    ellipse (gauge_posx, gauge_posy, diameter, diameter);
    fill(0);
    ellipse(gauge_posx, gauge_posy, diameter-10, diameter-10);
    //Changes the font to look more digital
    PFont digital = createFont("digital-7.ttf", 12);
    textFont(digital);
    //Write text under circle
    fill(255);
    textSize(14);
    //text(units, gauge_posx-diameter/8, gauge_posy+diameter/2+(diameter/10)); 
    text(units, gauge_posx, gauge_posy+diameter/2 + 10); 
    textAlign(CENTER, CENTER);
    if(diameter < width/7)
    {
      textSize(20);
    }
    else
    {
      textSize(50);
    }
    text((nf(current_value, 2, 1)), gauge_posx, gauge_posy);
    textAlign(CENTER, CENTER);
  }
  
  //RPM gauage made to change colour depending on the RPM
  void Draw_Gauge_RPM ()
  {
    //Creates a white circle then a black circle that's slightly smaller
    if(current_value > 2000)
    {
      fill(200, 0, 0); //Red 
    }
    else if(current_value <= 800 && current_value > 0)
    {
      fill(0, 0, 200); //Blue
    }
    else if(current_value > 800 && current_value <= 2000)
    {
      fill(0, 200, 0); // Green
    }
    else
    {
      fill(255);
    }
    
    ellipse (gauge_posx, gauge_posy, diameter, diameter);
    fill(0);
    ellipse(gauge_posx, gauge_posy, diameter-10, diameter-10);
    //Changes the font to look more digital
    PFont digital = createFont("digital-7.ttf", 12);
    textFont(digital);
    //Write text under circle
    fill(255);
    textSize(14);
    //text(units, gauge_posx-diameter/8, gauge_posy+diameter/2+(diameter/10)); 
    text(units, gauge_posx, gauge_posy+diameter/2 + 10); 
    textAlign(CENTER, CENTER);
    if(diameter < width/7)
    {
      textSize(20);
    }
    else
    {
      textSize(50);
    }
    text((nf(current_value, 2, 1)), gauge_posx, gauge_posy);
    textAlign(CENTER, CENTER);
  }
  
  //Fuel gauge made to change colours depending on the fuel level
  void Draw_Gauge_FUEL ()
  {
    //Creates a white circle then a black circle that's slightly smaller
    if(current_value < 48.0)
    {
      fill(200, 0, 0); //Red
    }
    else if(current_value >= 49.5)
    {
      fill(0, 0, 200); //Blue
    }
    else if(current_value < 49.5 && current_value >= 48.0)
    {
      fill(0, 200, 0); //Green
    }
    else
    {
      fill(255);
    }
    
    ellipse (gauge_posx, gauge_posy, diameter, diameter);
    fill(0);
    ellipse(gauge_posx, gauge_posy, diameter-10, diameter-10);
    //Changes the font to look more digital
    PFont digital = createFont("digital-7.ttf", 12);
    textFont(digital);
    //Write text under circle
    fill(255);
    textSize(14);
    //text(units, gauge_posx-diameter/8, gauge_posy+diameter/2+(diameter/10)); 
    text(units, gauge_posx, gauge_posy+diameter/2 + 10); 
    textAlign(CENTER, CENTER);
    if(diameter < width/7)
    {
      textSize(20);
    }
    else
    {
      textSize(50);
    }
    text((nf(current_value, 2, 1)), gauge_posx, gauge_posy);
    textAlign(CENTER, CENTER);
  }
  
  //Constructor Function (makes assigning values to member variables simpler in the setup/draw
  Gauge (float max, float min, float z, String u, float x, float y, float d)
  {
  maximum = max;
  minimum = min;
  current_value = z;
  units = u;
  gauge_posx =x;
  gauge_posy= y;
  diameter=d;
  }
  
  //Blank Constructor Function (We can probably delete this later)
  Gauge ()
  {
  maximum = 0;
  minimum = 0;
  current_value = 0;
  units = "Null";
  gauge_posx =0;
  gauge_posy= 0;
  diameter=0;
  }
  
}

// This is all just for testing purposes
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
