// Take damage
if (other.player != object_index)
{
    if damage = false
    {
    damage = true
    hp -= other.damage
    alarm[2] = 30
    image_blend = make_colour_rgb(220,150,150);
    if argument0 = 0
    {
        var snd = irandom(2)
        if snd = 0
        {
            audio_play_sound(sndAsmundDmg1,10,false)
        }
        if snd = 1
        {
            audio_play_sound(sndAsmundDmg2,10,false)
        }
        if snd = 2
        {
            audio_play_sound(sndAsmundDmg3,10,false)
        }
    }
    if argument0 = 1
    {
        var snd = irandom (2)
        if snd = 0
        {
            audio_play_sound(sndKimDmg1,10,false)
        }
        if snd = 1
        {
            audio_play_sound(sndKimDmg2,10,false)
        }
        if snd = 2
        {
            audio_play_sound(sndKimDmg3,10,false)
        }
    }
    if (state != scrHurtState && other.knockback>0) {         
        vspd = round(-3*other.knockback);
        hspd = round(other.knockbackDir*other.knockback);  
        state = scrHurtState
        scrMove(objSolid);
    }
}
}

