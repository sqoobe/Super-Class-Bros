/// scrMove(collisionObject)
var collisonObject = argument0; 


//Horizontal Collisions
if (place_meeting(x + hspd, y, collisonObject)) {
    while(!place_meeting(x+sign(hspd), y, collisonObject)) {
        x += sign(hspd)
    }
    hspd = 0
}
x += round(hspd)

//Vertical Collisions
if (place_meeting(x,y + vspd, collisonObject)) {
while(!place_meeting(x, y+sign(vspd), collisonObject)) {
        y += sign(vspd)
    }
    if(vspd>0){
        y-= 1
    }
    vspd = 0
}
y += round(vspd) 
