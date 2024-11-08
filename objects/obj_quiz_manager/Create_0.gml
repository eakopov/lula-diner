// Easy questions with feedback messages for each answer choice
global.easy_questions = [
    ["What is the main goal of the Psyche mission?", "1) To study a metal-rich asteroid", "2) To explore Mars", "3) To discover new stars", 1, 
        ["Correct! The Psyche mission aims to study a metal-rich asteroid.", "Incorrect. The mission's goal is not to explore Mars.", "Incorrect. The mission focuses on an asteroid, not star discovery."]],
    ["Where is the Psyche asteroid located?", "1) Near Earth", "2) Between Mars and Jupiter", "3) In the Kuiper Belt", 2, 
        ["Incorrect. Psyche is farther from Earth, located in the asteroid belt.", "Correct! Psyche orbits between Mars and Jupiter.", "Incorrect. Psyche is located in the asteroid belt, not the Kuiper Belt."]],
    ["What is the primary composition of the Psyche asteroid?", "1) Ice", "2) Rock", "3) Metal", 3, 
        ["Incorrect. Psyche is not composed mainly of ice.", "Incorrect. Psyche is not primarily rock.", "Correct! Psyche is thought to be metal-rich."]],
    ["Who is leading the Psyche mission?", "1) NASA", "2) SpaceX", "3) ESA", 1, 
        ["Correct! NASA is leading the mission.", "Incorrect. SpaceX is not leading this mission.", "Incorrect. ESA is not leading the Psyche mission."]],
    ["What type of asteroid is Psyche?", "1) Ice-rich", "2) Metal-rich", "3) Rock-rich", 2, 
        ["Incorrect. Psyche is not ice-rich.", "Correct! Psyche is thought to be metal-rich.", "Incorrect. Psyche is not primarily rock-rich."]]
];

// Medium questions with feedback messages
global.medium_questions = [
    ["What is the estimated diameter of Psyche?", "1) 140 miles", "2) 500 miles", "3) 1,000 miles", 1, 
        ["Correct! Psyche is estimated to be around 140 miles in diameter.", "Incorrect. Psyche is smaller than 500 miles.", "Incorrect. Psyche is not 1,000 miles in diameter."]],
    ["In what year did the Psyche mission launch?", "1) 2022", "2) 2024", "3) 2026", 2, 
        ["Incorrect. The mission launched in a later year.", "Correct! The mission launched in 2024.", "Incorrect. The mission was launched before 2026."]],
    ["How long will it take for Psyche to reach the asteroid?", "1) 1 year", "2) 3 years", "3) 5 years", 2, 
        ["Incorrect. It will take longer than 1 year.", "Correct! Psyche will take approximately 3 years.", "Incorrect. It will take less than 5 years."]],
    ["What type of propulsion does the Psyche spacecraft use?", "1) Chemical", "2) Nuclear", "3) Solar-electric", 3, 
        ["Incorrect. Psyche uses solar-electric propulsion.", "Incorrect. Nuclear propulsion is not used on Psyche.", "Correct! Psyche uses solar-electric propulsion."]],
    ["Which organization is funding the Psyche mission?", "1) NASA", "2) ESA", "3) Roscosmos", 1, 
        ["Correct! NASA funds the Psyche mission.", "Incorrect. ESA is not funding Psyche.", "Incorrect. Roscosmos is not involved in funding Psyche."]]
];

// Hard questions with feedback messages
global.hard_questions = [
    ["What scientific instrument will be used to study Psyche's composition?", "1) Gamma-ray and neutron spectrometer", "2) Magnetometer", "3) Solar panels", 1, 
        ["Correct! A gamma-ray and neutron spectrometer will be used.", "Incorrect. A magnetometer studies magnetic fields, not composition.", "Incorrect. Solar panels are for power, not composition analysis."]],
    ["What might the Psyche mission reveal about planet formation?", "1) Surface erosion", "2) Core composition", "3) Water content", 2, 
        ["Incorrect. Psyche's study focuses on metal cores, not surface erosion.", "Correct! Psyche may reveal insights into core composition.", "Incorrect. Psyche is not expected to find water content."]],
    ["What is unique about Psyche compared to most asteroids?", "1) It's metallic", "2) It has an atmosphere", "3) It's covered in ice", 1, 
        ["Correct! Psyche is one of the few metal-rich asteroids.", "Incorrect. Psyche does not have an atmosphere.", "Incorrect. Psyche is not ice-covered."]],
    ["Which planet's core is Psyche's composition similar to?", "1) Mars", "2) Earth", "3) Jupiter", 2, 
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
global.show_difficulty_selection = true; // Start with difficulty selection screen

// Play background music on a loop
audio_play_sound(snd_background_music, 1, true);
