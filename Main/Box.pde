class Box{
    float x;
    float y;
    float boxWidth;
    float boxHeight;

    Box(float _x, float _y, float _bw, float _bh){
        this.x = _x;
        this.y = _y;
        this.boxWidth = _bw;
        this.boxHeight = _bh;
    }

    void display(){
        stroke(255);
        strokeWeight(3);
        line(this.x, this.y, this.x + this.boxWidth, this.y);
        line(this.x + this.boxWidth, this.y, this.x + this.boxWidth, this.y + this.boxHeight);
        line(this.x + this.boxWidth, this.y + this.boxHeight, this.x, this.y + this.boxHeight);
        line(this.x, this.y + this.boxHeight, this.x, this.y);
    }
}