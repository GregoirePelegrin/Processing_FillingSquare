class Circle {
    Box walls;
    ArrayList<Circle> compagnons;
    boolean stuck;
    float x;
    float y;
    float radius;

    Circle(Box _w, ArrayList<Circle> _c, float _x, float _y){
        this.walls = _w;
        this.compagnons = _c;
        this.stuck = false;
        this.x = _x;
        this.y = _y;
        this.radius = 0;
    }

    void display(){
        stroke(255, 10);
        strokeWeight(1);
        ellipse(this.x, this.y, this.radius*2, this.radius*2);
    }

    void update(){
        if(!this.stuck){
            this.radius++;
            if(this.x - this.radius <= this.walls.x){
                this.radius--;
                this.stuck = true;
            } else if(this.y - this.radius <= this.walls.y){
                this.radius--;
                this.stuck = true;
            } else if(this.x + this.radius >= this.walls.x + this.walls.boxWidth){
                this.radius--;
                this.stuck = true;
            } else if(this.y + this.radius >= this.walls.y + this.walls.boxHeight){
                this.radius--;
                this.stuck = true;
            }
            if(tangible){
                for(Circle c : this.compagnons){
                    if(c != this && pow(this.radius+c.radius, 2) >= pow(this.x-c.x, 2) + pow(this.y-c.y, 2)){
                        this.radius--;
                        this.stuck = true;
                        c.stuck = true;
                    }
                }
            }
            
        }
    }
}