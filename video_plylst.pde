

import processing.video.*;
int maxMovies = 3; // Total number of movies
int myMoviesIndex = 0; // Initial movie to be displayed
float index = 0;

Movie[] myPelis;

void setup() {
  size(400, 300);
  background(0);
  myPelis = new Movie[maxMovies];
  for (int i = 0; i < myPelis.length; i ++) {
    println(i);
    myPelis[i] = new Movie(this,i + ".mov");

  }
}

void draw() {
  
  myPelis[int(index)].play();
  image(myPelis[int(index)], 0, 0);
  
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

void keyPressed ()
{
  //mapa de keys para videoplaylist
  if (key == '1') {index=0;}
  if (key == '2') {index=1;}
  if (key == '3') {index=2;}
  
  
}
