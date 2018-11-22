
//Class Definition for Fuel Tank (Joel)

class FuelTank
{
  // Member Variables
  float tank_capacity;
  float fuel_level;
  
  //Member Functions
  float getConsumedFuel ()
  {
    // I have no idea if this is what this function is supposed to do.
    // This will probably need to be updated.
    return tank_capacity - fuel_level;
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
