String [] pilines;
String pidigits;
long numdigits;
String bday = "3456789098";
String us [];
String uk [];
ArrayList <String> Birthday [];


void setup() {
  size(200, 200);
  noLoop();
  ArrayList<String> Birthdays = new ArrayList<String>();
  pilines = loadStrings("pi-tenmillion.txt");
  pidigits = pilines[0];
  numdigits = pidigits.length();
  //println(numdigits);
  us = MyPI.getSubs(bday);
  MyPI.setPI(pidigits);

  for (String q : us) {
    //println(q );
    println(q + ":" + MyPI.findinPI(q));
    //Birthdays.add(q);
    //q += MyPI.findinPI(q);
  }
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring(0, 3) + "/" + bday.substring(6);
  uk = MyPI.getSubs(bday_uk);
  for (String q : uk) {
    //println(q );
    println(q + ":" + MyPI.findinPI(q));
    //Birthdays.add(q);
    //q += MyPI.findinPI(q);
  }
}

void draw() {
}
