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
    tankSize == 100;
  }
  connectFuelAdapter() {
    fuelAdapterConnect = true;
  }

  openLock() {
    if (doorIsLocked == true) {
      doorIsLocked == false;
    } else {
      print("Your doors not locked.");
    }
  }

  takePassenger(passengerNumber) {
    if (currentPassengerNumber > passengerSeat) {
      print("Seats can't take $passengerNumber people.");
    } else if (currentPassengerNumber == passengerNumber && doorIsLocked == true) {
      print("Passengers can't enter. Doors locked.");
    } else {
      currentPassengerNumber + passengerNumber;
      print("$passengerNumber passenger enter your car.");
    }
  }

  takeFuel(fuelAdapterType, x) {
    if ( fuelAdapterType == fuelType && x > tankSize ) {
      print("Tank is full!");
    } else if (fuelType != fuelAdapterType) { 
      print("Your vehicle is not use $fuelType");      
    } else if (fuelAdapterConnect != true) {
      print("Please connect fueltAdapter!");
    } else {
      print("You fuel adapter is connected.");
      print("Starting $x unit transfer to your car.");
      tankNowSize + x;
      print("Fuel is successfully transfered your car.");
    }
  }
}

main () {
  Vehicle vehicle0 = Vehicle('Albea', 'road', 'fuel', 'gasoline', false, 4, 100, 0, 2, 4, true, 4, 0, false, 180);
  vehicle0.connectFuelAdapter();
  vehicle0.takeFuel('gasoline', 5);
  vehicle0.takePassenger(2);
  print(vehicle0.currentPassengerNumber);
}