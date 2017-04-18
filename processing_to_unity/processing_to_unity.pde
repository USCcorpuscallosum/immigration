ScreenBroadcast sb;

void setup() {
  sb = new ScreenBroadcast();
  size(200,100);
  
  background(100,0,0);
}

void draw() {
  //Draw things here!
 

  sb.BroadcastSplit(get());
  //Add some delay, change to higher values to have higher
  delay(20);
  //Anything bellow this line will be not send to Unity
}