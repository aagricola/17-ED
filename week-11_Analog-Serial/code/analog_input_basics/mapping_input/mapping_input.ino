// Mapping the range of input (0~1023) to a new range.

int mappedValue; // A variable to hold analog input. Analog input will always be a range of numbers between 0~1023
int analogValue;        // value output to the PWM (analog out)

void setup(){
  // Analog input does not use pinMode()!
	Serial.begin(9600); // Start communication for Serial Monitor
}

void loop(){
  analogValue = analogRead(0); // Read input from the specified analog pin.
  mappedValue = map(analogValue, 0, 1023, 0, 255); // analog0 is now mapped from 0-1023 to 0-255
  // print the results to the serial monitor:
//  Serial.print("sensor = ");
//  Serial.print(analogValue);
  delay(100);
  //Serial.print("output = ");
  Serial.write(mappedValue);
}
