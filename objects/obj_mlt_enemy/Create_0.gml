death_sound = undefined;

function play_explosion_sound() {
    var snd = irandom(2);
    
    if(snd == 0) {
        API.play_sound(snd_mlt_explosion_1);
    } else if(snd == 1) {
        API.play_sound(snd_mlt_explosion_2);
    } else if(snd == 2) {
        API.play_sound(snd_mlt_explosion_3);
    }
}