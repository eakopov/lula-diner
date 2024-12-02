/// Shuffle Function
/// Randomly shuffles the given array
function shuffle_array(array) {
    for (var i = array_length(array) - 1; i > 0; i--) {
        var j = irandom(i); // Random index between 0 and i
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

// Easy questions with feedback messages for each answer choice
global.easy_questions = [
    ["Which planet does Psyche orbit near?", "1) Mars", "2) Jupiter", "3) Saturn", 1, 
        ["Correct! Psyche orbits near Mars in the asteroid belt.", "Incorrect. Psyche does not orbit near Jupiter.", "Incorrect. Psyche is not near Saturn."]],
    ["What is the Psyche mission named after?", "1) A scientist", "2) A goddess", "3) A planet", 2, 
        ["Incorrect. Psyche is not named after a scientist.", "Correct! Psyche is named after the Greek goddess of the soul.", "Incorrect. Psyche is not a planet."]],
    ["How does Psyche's size compare to other asteroids?", "1) Very small", "2) Average", "3) One of the largest", 3, 
        ["Incorrect. Psyche is not very small.", "Incorrect. Psyche is larger than average.", "Correct! Psyche is one of the largest asteroids in the belt."]],
    ["What does the Psyche mission hope to understand?", "1) The early solar system", "2) Alien life", "3) Star formation", 1, 
        ["Correct! Psyche helps us understand the early solar system.", "Incorrect. Psyche does not study alien life.", "Incorrect. Star formation is not related to Psyche."]],
    ["What makes Psyche unique?", "1) It’s made of metal", "2) It’s the closest asteroid", "3) It has life on it", 1, 
        ["Correct! Psyche is unique because it’s metal-rich.", "Incorrect. Psyche is not the closest asteroid.", "Incorrect. Psyche does not have life."]],
    ["Who is the principal investigator of the Psyche mission?", "1) Jim Green", "2) Lindy Elkins-Tanton", "3) Elon Musk", 2, 
        ["Incorrect. Jim Green is not the principal investigator.", "Correct! Lindy Elkins-Tanton leads the Psyche mission.", "Incorrect. Elon Musk is not involved with this mission."]],
    ["What is the mission's spacecraft called?", "1) Psyche", "2) Voyager", "3) Perseverance", 1, 
        ["Correct! The spacecraft itself is called Psyche.", "Incorrect. Voyager is a different mission.", "Incorrect. Perseverance is a Mars rover."]],
    ["What is the asteroid belt?", "1) A collection of rocks and metals between Mars and Jupiter", "2) A ring of gas around Saturn", "3) A magnetic field around Earth", 1, 
        ["Correct! The asteroid belt is between Mars and Jupiter.", "Incorrect. Saturn’s rings are gas and ice.", "Incorrect. Earth’s magnetic field is unrelated."]],
    ["How was Psyche discovered?", "1) By telescope", "2) By spacecraft", "3) By accident", 1, 
        ["Correct! Psyche was discovered using telescopes.", "Incorrect. No spacecraft discovered Psyche.", "Incorrect. Psyche was identified intentionally."]],
    ["How long has Psyche been known to scientists?", "1) Over 100 years", "2) 50 years", "3) Less than 10 years", 1, 
        ["Correct! Psyche was discovered in the 19th century.", "Incorrect. Psyche was discovered much earlier.", "Incorrect. Psyche has been known for over a century."]]
];


// Medium questions with feedback messages
global.medium_questions = [
    ["What is Psyche's surface likely to be?", "1) Smooth", "2) Cratered and uneven", "3) Covered in ice", 2, 
        ["Incorrect. Psyche’s surface is not smooth.", "Correct! Psyche’s surface is likely cratered and uneven.", "Incorrect. Psyche is not covered in ice."]],
    ["How does the Psyche mission communicate with Earth?", "1) Radio waves", "2) Laser signals", "3) Internet satellites", 1, 
        ["Correct! The Psyche mission uses radio waves.", "Incorrect. Laser signals are not used here.", "Incorrect. Internet satellites are not part of Psyche."]],
    ["How is Psyche thought to have formed?", "1) As a leftover planetary core", "2) As a gas giant", "3) As a moon", 1, 
        ["Correct! Psyche is likely a leftover planetary core.", "Incorrect. Psyche is not a gas giant.", "Incorrect. Psyche is not a moon."]],
    ["What powers the Psyche spacecraft?", "1) Solar-electric propulsion", "2) Nuclear energy", "3) Gas thrusters", 1, 
        ["Correct! The spacecraft is powered by solar-electric propulsion.", "Incorrect. Nuclear energy is not used.", "Incorrect. Gas thrusters are not used on Psyche."]],
    ["What instrument measures Psyche's gravitational field?", "1) Magnetometer", "2) X-ray spectrometer", "3) Radio science system", 3, 
        ["Incorrect. Magnetometer measures magnetic fields.", "Incorrect. X-ray spectrometer is not used for gravity.", "Correct! The radio science system measures gravitational fields."]],
    ["Which type of orbit will Psyche enter?", "1) Circular", "2) Elliptical", "3) Spiraling closer", 3, 
        ["Incorrect. Psyche’s orbit isn’t strictly circular.", "Incorrect. Psyche doesn’t use elliptical orbits.", "Correct! Psyche will spiral closer during its mission."]],
    ["What material might Psyche help locate in asteroids?", "1) Water", "2) Metal", "3) Diamonds", 2, 
        ["Incorrect. Psyche isn’t expected to locate water.", "Correct! Psyche helps us understand metal-rich asteroids.", "Incorrect. Diamonds are not a focus of Psyche."]],
    ["How will Psyche’s magnetic field be studied?", "1) Gamma-ray spectrometer", "2) Magnetometer", "3) Solar panels", 2, 
        ["Incorrect. Gamma-ray spectrometer measures elements.", "Correct! The magnetometer measures magnetic fields.", "Incorrect. Solar panels don’t study magnetic fields."]],
    ["What is Psyche’s estimated mass?", "1) 2.7 x 10^19 kg", "2) 1.5 x 10^18 kg", "3) 9.8 x 10^20 kg", 1, 
        ["Correct! Psyche’s mass is estimated at 2.7 x 10^19 kg.", "Incorrect. This value is too low for Psyche.", "Incorrect. This value is too high for Psyche."]],
    ["Why is Psyche significant?", "1) First mission to a metal-rich asteroid", "2) Closest asteroid to Earth", "3) Part of a new planetary system", 1, 
        ["Correct! Psyche is the first mission to a metal-rich asteroid.", "Incorrect. Psyche is not the closest to Earth.", "Incorrect. Psyche is not part of a new planetary system."]]
];

// Hard questions with feedback messages
global.hard_questions = [
    ["What scientific instrument will be used to study Psyche's composition?", "1) Gamma-ray and neutron spectrometer", "2) Magnetometer", "3) Solar panels", 1, 
        ["Correct! A gamma-ray and neutron spectrometer will be used.", "Incorrect. A magnetometer studies magnetic fields, not composition.", "Incorrect. Solar panels are for power, not composition analysis."]],
    ["What might the Psyche mission reveal about planet formation?", "1) Surface erosion", "2) Core composition", "3) Water content", 2, 
        ["Incorrect. Psyche's study focuses on metal cores, not surface erosion.", "Correct! Psyche may reveal insights into core composition.", "Incorrect. Psyche is not expected to find water content."]],
    ["What is unique about Psyche compared to most asteroids?", "1) It's metallic", "2) It has an atmosphere", "3) It's covered in ice", 1, 
        ["Correct! Psyche is one of the few metal-rich asteroids.", "Incorrect. Psyche does not have an atmosphere.", "Incorrect. Psyche is not ice-covered."]],
    ["Psyche's composition may be similar to?", "1) The cores of gas giants like Jupiter", "2) The cores of rocky planets like Earth", "3) The cores of stars like the sun", 2, 
        ["Incorrect. Psyche's core is thought to be more similar to Earth's.", "Correct! Psyche’s metal composition resembles Earth's core.", "Incorrect. Psyche's composition does not resemble Jupiter's core."]],
    ["How many orbital phases will Psyche go through while studying the asteroid?", "1) 4", "2) 8", "3) 12", 1, 
        ["Correct! Psyche will complete 4 orbital phases.", "Incorrect. Psyche will have fewer than 8 orbital phases.", "Incorrect. Psyche will complete fewer than 12 phases."]]
];


// Initialize global variables
global.current_question = 0;
global.player_answer = -1;
global.score = 0;
global.quiz_completed = false;
global.timer = 1000; // Set the timer for 5 seconds (300 frames)
global.result_text = "";
global.timeouts = 0;
global.show_difficulty_selection = true; // Start with difficulty selection screen

// Initialize global variables for the instrument pop-up
global.show_instrument_popup = false;  // Determines if the pop-up should be shown
global.current_instrument_index = -1; // Tracks which instrument to display
global.instrument_popup_timer = 0;    // Timer for how long the pop-up is displayed


// Play background music on a loop
audio_play_sound(snd_background_music, 1, true);

// Winning and Losing Messages
global.win_messages = [
    "Congratulations! You won with an excellent score on the easy level!",
    "Great job! You won with a solid performance on the medium level!",
    "Amazing! You won with impressive knowledge on the hard level!"
];

global.lose_messages = [
    "Sorry, you didn’t score high enough. Try again to improve!",
    "Time ran out too often. Be quicker next time to win!"
];

// Instrument information: image and brief fact
global.instruments = [
    ["Gamma-Ray Spectrometer", "Gamma-Ray Spectrometer, Helps identify elements on Psyche’s surface by analyzing gamma rays.", spr_gamma_ray_spectrometer],
    ["Magnetometer", "Magnetometer, Measures magnetic fields to see if Psyche has a remnant magnetic field.", spr_magnetometer],
    ["Imaging System", "Imaging System, Captures high-resolution images to map Psyche's surface.", spr_imaging_system]
];

