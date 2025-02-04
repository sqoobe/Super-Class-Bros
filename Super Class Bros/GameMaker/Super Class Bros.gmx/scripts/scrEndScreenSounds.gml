///scrEndScreen(player that lost,player that won)

room_goto(rmEndScreen)

//Åsmund defeat
if(argument0 = 0)
{
    var snd = irandom(4)
    if snd = 0
    {
        audio_play_sound(sndAsmundDefeat1,10,false)
    }
    if snd = 1
    {
        audio_play_sound(sndAsmundDefeat2,10,false)
    }
    if snd = 2
    {
        audio_play_sound(sndAsmundDefeat3,10,false)
    }
    if snd = 3
    {
        audio_play_sound(sndAsmundDefeat4,10,false)
    }
    if snd = 4
    {
        audio_play_sound(sndAsmundDefeat5,10,false)
    }
}

//Åsmund victory
if(argument1 = 0)
{
    audio_play_sound(sndAsmundVictory,10,false)
}

//Kim defeat
if(argument0 = 1)
{
    audio_play_sound(sndKimDefeat,10,false)
}

//Kim victory
if(argument1 = 1)
{
    audio_play_sound(sndKimVictory,10,false)
}
    

