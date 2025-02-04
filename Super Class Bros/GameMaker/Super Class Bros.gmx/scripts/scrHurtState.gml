///scrHurtState()
if (hspd != 0) image_xscale =sign(hspd);

// Apply gravity
if (!place_meeting(x,y+1,objSolid)) {
    vspd += grav;
} else {
    vspd = 0;
    
    // Use friction
    scrApplyFriction(acc);
}

scrDirectionMoveBounce(objSolid); 

// Change back to the move state
if (hspd == 0 && vspd == 0) {
    image_blend = c_white;
    
    state =scrMoveState
    
}
