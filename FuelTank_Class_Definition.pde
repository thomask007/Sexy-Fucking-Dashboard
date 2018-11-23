
//Class Definition for Fuel Tank (Joel)

class FuelTank
{
  // Member Variables
  float tank_capacity;
  float fuel_level;
  
  //Member Functions
  float getConsumedFuel (String filePath)
  {
    if (filePath == "car_status_BMW_323i.csv")
    {
      tank_capacity = 60;
    }
    else if (filePath == "car_status_Truck_F150.csv")
    {
      tank_capacity = 80;
    }
    // I have no idea if this is what this function is supposed to do.
    // This will probably need to be updated.
    return tank_capacity - fuel_level;
  }
  
  void setFuelTank(float fuel_level1)
  {
    fuel_level = fuel_level1;
  }
  
   
  
}

//TEST STUFF (This can be deleted, it's just proof it works)
void setup()
{
  FuelTank Jimmothy = new FuelTank();
  Jimmothy.tank_capacity=420;
  Jimmothy.fuel_level=69;
  println(Jimmothy.getConsumedFuel());
}
