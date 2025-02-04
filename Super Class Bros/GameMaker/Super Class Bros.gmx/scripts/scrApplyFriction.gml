///scrApplyFriction(amount)
var amount = argument0

if (hspd != 0) {
    if(abs(hspd)-amount > 0){
        hspd -= round(amount*sign(hspd));
    } else {
        hspd = 0;
    }
}
