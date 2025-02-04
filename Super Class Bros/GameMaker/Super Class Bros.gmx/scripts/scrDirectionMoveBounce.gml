/// ScrDirectionMoveBounce(collisionObject)
var collisonObject = argument0; 


//Horizontal Collisions
if (place_meeting(x + hspd, y, collisonObject)) {
    while(!place_meeting(x+sign(hspd), y, collisonObject)) {
        x += sign(hspd)
    }
    hspd = -(hspd/2);
}
x += round(hspd)

//Vertical Collisions
if (place_meeting(x,y + vspd, collisonObject)) {
while(!place_meeting(x, y+sign(vspd), collisonObject)) {
        y += sign(vspd)
    }
    vspd = -(vspd/2);
    if(abs(vspd) < 2) vspd = 0;
}
y += round(vspd) 
