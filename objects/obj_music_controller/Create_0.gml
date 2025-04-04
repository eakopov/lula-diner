// Stop any other music just in case
audio_stop_all();

// Play the appropriate track depending on the room
if (room == room_intro) {
    audio_play_sound(snd_intro_music, 1, true); // true = loop
} else if (room == room_mini) {
    audio_play_sound(snd_intro_music, 1, true);
}  else if (room == room_rhythm_intro) {
    audio_play_sound(snd_intro_music, 1, true);
}


