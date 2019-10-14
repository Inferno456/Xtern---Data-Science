String csv[];
String myData[][];

PShape baseMap;
PFont f;

void setup(){
  size(1500,900);
  baseMap = loadShape("grid.svg");
  csv = loadStrings("DS-Data.csv");
  f = createFont("Sitka Banner Bold", 12);
  myData = new String[csv.length][3];
  
  for(int i = 0; i<csv.length; i++){
    myData[i] = csv[i].split(",");
  }
  
  
}

void draw(){
  
  
  
  shape(baseMap, 0, 0, width, height);
  fill(255, 0, 0, 50);
  noStroke();
  
  for(int i = 1; i<myData.length; i++){
    noStroke();
    float Long = map(float(myData[i][1]),-0.31, 1.4, 0, width);
    float Lat = map(float(myData[i][2]), -0.31, 1.4, 0, height);
    float markerSize = 3;
    if(float(myData[i][3])>=3){
      fill(100,200,100,200); //green
      ellipse(Long, Lat, markerSize, markerSize);
    }else{
      fill(255, 0, 0, 50); //red
      ellipse(Long, Lat, markerSize, markerSize);
    }
   }
   
   fill(100, 100, 200, 50);
   float busX = map(0.19,-0.31,1.4,0,width);
   float busY = map(0.19,-0.31,1.4,0,height);
   ellipse(busX, busY, 40, 40);
}
