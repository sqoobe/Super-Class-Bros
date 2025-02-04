///Move state ()

if argument0 = 1 colObj = objSolid
if argument0 = 2 colObj = objSolid2

if (!place_meeting(x,y + 1, colObj)) 
    {
    vspd += grav;
    
    // Player is in the air
    //sprite_index = sprPlayerJump;
    image_speed = 0;
    image_index = (vspd > 0);
    
    //Control the jump height
    if(up_release && vspd < -6) {
        vspd = -6;
    }
} else {
    vspd = 0;
    
    //Jumping code
    if (up) {
    vspd = -16;
    //audio_play_sound(sndJump,5,false);
    }
    
    // Player is on the ground
    if(hspd == 0) {
        //sprite_index = sprPlayerIdle;
    } else {
        //sprite_index = sprPlayerWalk 
        //image_speed =.4; 
    }
} 

if (right || left) {
    hspd += (right-left)*acc;
    hspd_dir = right - left;
    
    if (hspd > spd) {hspd = spd}
    if (hspd < -spd) {hspd = -spd}
} else {
    scrApplyFriction(acc);
}

if (hspd != 0) {
    image_xscale = sign(hspd);
}

// Play the landing sound
/*if (place_meeting(x,y+vspd, objSolid) && vspd + 1 > 0) {
    audio_emitter_pitch(audio_em, random_range(.8, 1.2));
    audio_emitter_gain(audio_em, .4);
    audio_play_sound_on(audio_em,sndLanding, false, 6); 
}*/

if argument0 = 1 scrMove(objSolid)
if argument0 = 2 scrMove(objSolid2)

