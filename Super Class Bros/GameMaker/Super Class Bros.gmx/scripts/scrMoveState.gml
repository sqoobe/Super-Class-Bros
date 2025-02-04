///Move state ()
collisionObject = argument1
if(place_meeting(x,y + 1, collisionObject)){
    aerialDelay=false
    downAir=false
    upAir=false
    rightAir=false
    leftAir=false
}
if (!place_meeting(x,y + 1, collisionObject)) 
    {
    vspd+=grav;
    
     //Player is in the air
    if(!aerialDelay && !specialAttacking)
    {
        image_speed = 0.1
        //Ninja jump
        if (argument2 = 0)
        {
                sprite_index = sprNinjaJump
        }
        // Bard jump
        if (argument2 = 1)
        {
            sprite_index = sprBardJump
        }
    }
    //image_index = (vspd > 0);
    
    //Control the jump height
    if(up_release && vspd < -3) {
        vspd = -3;
    }
} else {
    vspd = 0;
    jumpSound = false
    
    //Jumping code
    if (up) 
    {
        vspd = jumpPower;
        if(left){
            image_xscale=-1
        }
        if(right){
            image_xscale=1
        }
        //Jump sound
        if !jumpSound
        {
            audio_play_sound(sndJump,10,false)
            jumpSound = true
        }
    }
    
    // Player is on the ground
    if(hspd == 0 && !forwardAttacking && !specialAttacking)
    {
        image_speed =0.1;
        // Ninja sprite
        if (argument2 = 0)
        {
            sprite_index = sprNinja
        }
        // Bard sprite
        if (argument2 = 1)
        {
            sprite_index = sprBard
        }
    } else if (!forwardAttacking && !specialAttacking)
    {
        image_speed =.2; 
        // Ninja running
        if (argument2 = 0)
        {
            sprite_index = sprNinjaRunning
        }
        // Bard running
        if (argument2 = 1)
        {
            sprite_index = sprBardRunning
        }
    }
}

//Up air
if (vspd != 0 && upAir && !aerialDelay)
{
    if (argument2 = 1)
        {
            sprite_index = sprBardUpAir
            image_index=0
            scrBardUpAerial()
            //Sound
            if (!aerialDelay)
            {
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndKimAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndKimAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndKimAttack3,10,false)
                }
            }
        }
        if (argument2 = 0)
        {
            sprite_index = sprNinjaUpAir
            image_index=0
            scrBardUpAerial()
            //Sound
            if (!aerialDelay)
            {
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndAsmundAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndAsmundAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndAsmundAttack3,10,false)
                }
            }
        }
    aerialDelay=true
    alarm[4]=20
}

//Down air
if (vspd != 0 && downAir && !aerialDelay)
{
    if (argument2 = 1)
    {                          
        sprite_index = sprBardDownAir
        image_index=0
        scrBardDownAerial()
        //Sound
            if (!aerialDelay)
            {
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndKimAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndKimAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndKimAttack3,10,false)
                }
            }
        }
        if (argument2 = 0)
        {
            sprite_index = sprNinjaDownAir
            image_index=0
            scrNinjaDownAerial()
            //Sound
            if (!aerialDelay)
            {
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndAsmundAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndAsmundAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndAsmundAttack3,10,false)
                }
            }
        }
    aerialDelay=true
    alarm[4]=20
}
//Forward Air
if (vspd != 0 && !aerialDelay)
{
    if (argument2 = 1)
    {                          
        if(rightAir)
        {
            sprite_index = sprBardForwardAir
            image_index=0
            image_xscale=1
            aerialDelay=true
            alarm[4]=20
            scrBardForwardAerial()
            //Sound
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndKimAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndKimAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndKimAttack3,10,false)
                }
            }
        if(leftAir)
        {
            sprite_index = sprBardForwardAir
            image_index=0
            image_xscale=-1
            aerialDelay=true
            alarm[4]=20
            scrBardForwardAerial()
            //Sound
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndKimAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndKimAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndKimAttack3,10,false)
                }
        }
    }
if (argument2 = 0)
    {                          
        if(rightAir)
        {
            sprite_index = sprNinjaForwardAir
            image_index=0
            image_xscale=1
            aerialDelay=true
            image_speed=0.1
            alarm[4]=20
            scrNinjaForwardAerial()
            //Sound
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndAsmundAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndAsmundAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndAsmundAttack3,10,false)
                }
            }
        if(leftAir)
        {
            sprite_index = sprNinjaForwardAir
            image_index=0
            image_xscale=-1
            aerialDelay=true
            image_speed=0.1
            alarm[4]=20
            scrNinjaForwardAerial()
            //Sound
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndAsmundAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndAsmundAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndAsmundAttack3,10,false)
                }
        }
    }
}
if (right || left) && ((!forwardAttacking && !forwardAttackDelay && !specialAttacking) || vspd!=0)  {
    hspd += (right-left)*acc;
    hspd_dir = right - left;
    
    if (hspd > spd) {hspd = spd}
    if (hspd < -spd) {hspd = -spd}
} else {
    scrApplyFriction(acc);
}

if (hspd != 0 && vspd=0) {
    image_xscale = sign(hspd);
}

//Forwardattack
if (forwardAttack && !forwardAttacking && !forwardAttackDelay && vspd=0)
{
    // Ninja forwardattack
    if (argument2 = 0)
    {
        sprite_index = sprNinjaForwardAttack
        scrNinjaAttack()
        var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndAsmundAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndAsmundAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndAsmundAttack3,10,false)
                }
    }
    // Bard forwardattack
    if (argument2 = 1)
    {
        sprite_index = sprBardForwardAttack
        scrBardAttack()
        //Sound
            if (!aerialDelay)
            {
                var snd = irandom(2)
                if snd = 0
                {
                    audio_play_sound(sndKimAttack1,10,false)
                }
                if snd = 1
                {
                    audio_play_sound(sndKimAttack2,10,false)
                }
                if snd = 2
                {
                    audio_play_sound(sndKimAttack3,10,false)
                }
            }
    }
    image_speed=0.2
    image_index=0
    alarm[0]=image_number/image_speed
    forwardAttacking = true
    forwardAttackDelay = true
    alarm[1] = 25
}

//Special
if (special && !forwardAttacking && !specialAttacking && !aerialDelay)
{
    specialAttacking = true
    //Ninja special
    if (argument2 = 0)
    {
        quicktimer=21
        sprite_index = sprNinjaSpecial
        var snd = irandom(2)
        if snd = 0
        {
            audio_play_sound(sndAsmundSpecial1,10,false)
        }
        if snd = 1
        {
            audio_play_sound(sndAsmundSpecial2,10,false)
        }
        if snd = 2
        {
            audio_play_sound(sndAsmundSpecial3,10,false)
        }
    }
    //Bard special
    if (argument2 = 1)
    {
        quicktimer=11
        sprite_index = sprBardSpecial
        var snd = irandom(5)
        if snd = 0
        {
        audio_play_sound(sndKimSpecial1, 10, false)
        }
        if snd = 1
        {
        audio_play_sound(sndKimSpecial2, 10, false)
        }
        if snd = 2
        {
        audio_play_sound(sndKimSpecial3, 10, false)
        }
        if snd = 3
        {
        audio_play_sound(sndKimSpecial4, 10, false)
        }
        if snd = 4
        {
        audio_play_sound(sndKimSpecial5, 10, false)
        }
        if snd = 5
        {
        audio_play_sound(sndKimSpecial6, 10, false)
        }
    }
        image_speed=0.2
        image_index=0
        alarm[3]=image_number/image_speed
        specialAttacking = true
}



// Play the landing sound
/*if (place_meeting(x,y+vspd, collisonObject) && vspd + 1 > 0) {
    audio_emitter_pitch(audio_em, random_range(.8, 1.2));
    audio_emitter_gain(audio_em, .4);
    audio_play_sound_on(audio_em,sndLanding, false, 6); 
}*/

if argument0 = 0
{
    scrMove(objSolid)
}

if argument0 = 1
{
    scrMove(objSolid2)
}

if(quicktimer>0){
    quicktimer--
}
if(quicktimer=1 && sprite_index=sprNinjaSpecial){
    ninjainstance = instance_create(x+(27*image_xscale),y-24,objNinjaSpecial)
    ninjainstance.dir = image_xscale
    scrHitboxProjectile(ninjainstance,3,15)
}
if(quicktimer=1 && sprite_index=sprBardSpecial){
    bardinstance = instance_create(x+(35*image_xscale),y,objBardSpecial)
    bardinstance.dir = image_xscale
    scrHitboxProjectile(bardinstance,0,3)
}
