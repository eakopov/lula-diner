if(!mute)  {
    audio_stop_sound(snd_bg_music);
    mute = true;
} else {
    audio_play_sound(snd_bg_music, 0, true);
    mute = false;
}