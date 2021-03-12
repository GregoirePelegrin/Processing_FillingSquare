ArrayList<Circle> circles;
boolean paused;
boolean tangible;
Box littleBox;

void setup(){
    size(600, 600);
    frameRate(60);

    circles = new ArrayList<Circle>();
    paused = true;
    tangible = false;
    littleBox = new Box(100, 100, 400, 400);
    
    background(0);
    noFill();
}

void draw(){
    for(Circle circle : circles){
        if(!paused)
            circle.update();
        circle.display();
    }
    littleBox.display();
}

void mousePressed(){
    if(mouseButton == LEFT)
        circles.add(new Circle(littleBox, circles, mouseX, mouseY));
    else if(mouseButton == RIGHT) 
        paused = !paused;
    else
        tangible = !tangible;
}