
class FuelTank
{
  // Member Variables
  float tank_capacity;
  float consumedFuel;
  float totalconsumedFuel;
  float initialFuel;
  boolean initialHasBeenSet;
  float totalconsumedFuel2;
  
  //Member Functions
  
  // getConsumedFuel has been changed to show the fuel consumed between last second and the current second
  void getConsumedFuel (float fuel_level)
  {
    if (!initialHasBeenSet)
    {
      totalconsumedFuel2 =tank_capacity - fuel_level;
      initialHasBeenSet=true;
    }
    else
    {
      //consumedFuel = totalconsumedFuel - fuel_level;
      if (filePath == "car_status_BMW_323i.csv")
      {
        tank_capacity = 60;
      }
      else if (filePath == "car_status_Truck_F150.csv")
      {
        tank_capacity = 80;
      }

      totalconsumedFuel = tank_capacity - fuel_level;
      consumedFuel = totalconsumedFuel - totalconsumedFuel2;
      totalconsumedFuel2 = totalconsumedFuel;
    }
    
  }
  
  FuelTank()
  {
    tank_capacity=0;
    consumedFuel=0;
    totalconsumedFuel=0;
    initialFuel=0;
    initialHasBeenSet=false;
  }
  
}
