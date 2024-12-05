if (keyboard_check_pressed(ord("M"))) { // Press 'M' to toggle music
    if (global.music_on) {
        audio_stop_sound(snd_background_music);
        global.music_on = false;
    } else {
        audio_play_sound(snd_background_music, 1, true);
        global.music_on = true;
    }
}