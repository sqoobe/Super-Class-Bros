/// ScrMove(collisionObject)
var collisonObject = argument0; 


//Horizontal Collisions
if (place_meeting(x + hspd, y, collisonObject)) {
    while(!place_meeting(x+sign(hspd), y, collisonObject)) {
        x += sign(hspd)
    }
    hspd = 0
}
x += hspd

//Vertical Collisions
if (place_meeting(x,y + vspd, collisonObject)) {
while(!place_meeting(x, y+sign(vspd), collisonObject)) {
        y += sign(vspd)
    }
    vspd = 0
}
y += vspd 
