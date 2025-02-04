#define scrHitboxGenerator
///scr_HitboxGenerator(xoffset,yoffset,spawn,linger,knockback,knockbackDir,object_index,playerxscale,special,damage)
with(instance_create(x,y,objHitbox)){  
    xoffset=argument0
    yoffset=argument1
    spawn=argument2
    linger=argument3
    knockback=argument4
    knockbackDir=argument5
    player=argument6
    playerxscale=argument7
    special=argument8
    damage=argument9
}

#define scrHitboxProjectile
scrHitboxGenerator(0,0,1,-1,argument1,image_xscale,argument0,image_xscale,true,argument2)