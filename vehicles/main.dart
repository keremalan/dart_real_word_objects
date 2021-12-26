class Vehicle {
  String name; //car name
  String type; //where car go
  String powerType; //what car using 'electricity, hydrogen, fuel, human power'
  String fuelType; //which car using the power type 'for electricity cars, power plug type || fuel type like gasoline
  bool fuelAdapterConnect; // fuelAdapter is connect?
  int wheels; // how much wheel the vehicle got 
  int tankSize; // tank how much fuel can take
  int tankNowSize; // current size of tank
  int consumption; // how much fuel using per km
  int door; // how much door is on car
  bool doorIsLocked;
  int passengerSeat; // how much passenger can seat
  int currentPassengerNumber;
  bool trouble; // got any problem
  int maxSpeed; // cars maximum speed in default factory files


  Vehicle(this.name, this.type, this.powerType, this.fuelType, this.fuelAdapterConnect, this.wheels, this.tankSize, this.tankNowSize, this.door, this.passengerSeat, this.doorIsLocked, this.consumption, this.currentPassengerNumber, this.trouble, this.maxSpeed);

  fullDepo() {
    tankSize == 100; // tank will fulled
  }
  connectFuelAdapter() {
    fuelAdapterConnect = true; // fuelAdapter is connected
  }

  openLock() {
    if (doorIsLocked == true) { // check doorIsLocked
      doorIsLocked == false; // change value of doorIsLocked
    } else {
      print("Your doors not locked.");
    }
  }

  takePassenger(int passengerNumber) {
    if (currentPassengerNumber > passengerSeat && doorIsLocked == false) { // check avability of passengerSeat
      print("Seats can't take $passengerNumber people.");
    } else if (currentPassengerNumber == passengerNumber && doorIsLocked == false) { // passengerSeats are avaible and doors locked
      print("Passengers can't enter. Doors locked.");
    } else {
      currentPassengerNumber += passengerNumber; // add passengerNumber to currentPassengerNumber for calculate how much people in car
      print("$passengerNumber passenger enter your car.");
      print("$currentPassengerNumber passenger in your car, now.");
    }
  } 

  takeFuel(fuelAdapterType, x) {
    if ( fuelAdapterType == fuelType && x > tankSize ) { // check adapter type and can tankSize take this fuel size?
      print("Tank is full!");
    } else if (fuelType != fuelAdapterType) {  // if fuelType and fuelAdapterType not equal like your care use a gasoline but you want a add dizel
      print("Your vehicle is not use $fuelType");      
    } else if (fuelAdapterConnect != true) { //if fuelAdapter not connect
      print("Please connect fueltAdapter!");
    } else {
      print("You fuel adapter is connected.");
      print("Starting $x unit $fuelAdapterType transfer to your car.");
      tankNowSize + x; // add fuel size to current fuel in tank
      print("Fuel is successfully transfered your car.");
    }
  }
}

main () async {
  Vehicle vehicle0 = Vehicle('Albea', 'road', 'fuel', 'gasoline', false, 4, 100, 0, 2, 4, true, 4, 0, false, 180);
  vehicle0.connectFuelAdapter();
  vehicle0.takeFuel('gasoline', 5);
  print('5 liter gasoline is transfering your car.');
  print('You paid the bill');
  print('5 liter gasoline is transfered.');

}
