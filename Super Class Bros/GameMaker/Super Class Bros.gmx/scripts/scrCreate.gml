/// Get the input
scrGetInput(1);

/// Initiate variables
spd = 6;
acc = 1;
hspd = 0;
vspd = 0;
grav = 0.4;
jumpPower = -11
state = scrMoveState
forwardAttacking=false
forwardAttackDelay = false
damage=false
char = argument0
player = argument1
specialAttacking = false
quicktimer=0
hp = 100
maxhp = 100
downAirOn = false
downAir=false
upAir=false
rightAir=false
leftAir=false
aerialDelay=false
jumpSound = false
alarmSet = false
// Create the audio emitter
audio_em = audio_emitter_create(); 

num = 1
