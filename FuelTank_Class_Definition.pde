class FuelTank
{
  // Member Variables
  float tank_capacity;
  float consumedFuel;
  float totalconsumedFuel;
  float initialFuel;
  boolean initialHasBeenSet;
  float previousConsumedFuel;
  float [] fuelConsumptionArr;
  float [] fuelConsumptionChart;
  
  //Member Functions
  
  // getConsumedFuel has been changed to show the fuel consumed between last second and the current second
  void getConsumedFuel (float fuel_level)
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
      totalconsumedFuel = tank_capacity - fuel_level;
      consumedFuel = totalconsumedFuel - previousConsumedFuel;
      fuelConsumptionArr[sdpx.currentIndex] = consumedFuel;
      previousConsumedFuel = totalconsumedFuel;
        if (sdpx.currentIndex < 40)
        {
          for(int i = 0; i < 40; i++)
          {
            fuelConsumptionChart[i] = fuelConsumptionArr[i];
          }
        }
        else 
        {
          fuelConsumptionChart[39] = fuelConsumptionArr[sdpx.currentIndex];
          for(int j = 0; j < 39; j++)
          {
            fuelConsumptionChart[j] = fuelConsumptionChart[j+1];
          }   
         } 
      if (!initialHasBeenSet)
      {
        consumedFuel =0;
        initialHasBeenSet = true;
      }
    
  }
  
  FuelTank()
  {
    tank_capacity=0;
    consumedFuel=0;
    totalconsumedFuel=0;
    initialFuel=0;
    initialHasBeenSet=false;
    fuelConsumptionArr= new float [600];
    fuelConsumptionChart = new float [40];
  }
  
}
