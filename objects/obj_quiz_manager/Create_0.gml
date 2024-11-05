// Easy questions
global.easy_questions = [
    ["What is the main goal of the Psyche mission?", "1) To study a metal-rich asteroid", "2) To explore Mars", "3) To discover new stars", 1],
    ["Where is the Psyche asteroid located?", "1) Near Earth", "2) Between Mars and Jupiter", "3) In the Kuiper Belt", 2],
    ["What is the primary composition of the Psyche asteroid?", "1) Ice", "2) Rock", "3) Metal", 3],
    ["Who is leading the Psyche mission?", "1) NASA", "2) SpaceX", "3) ESA", 1],
    ["What type of asteroid is Psyche?", "1) Ice-rich", "2) Metal-rich", "3) Rock-rich", 2]
];

// Medium questions
global.medium_questions = [
    ["What is the estimated diameter of Psyche?", "1) 140 miles", "2) 500 miles", "3) 1,000 miles", 1],
    ["In what year did the Psyche mission launch?", "1) 2022", "2) 2024", "3) 2026", 2],
    ["How long will it take for Psyche to reach the asteroid?", "1) 1 year", "2) 3 years", "3) 5 years", 2],
    ["What type of propulsion does the Psyche spacecraft use?", "1) Chemical", "2) Nuclear", "3) Solar-electric", 3],
    ["Which organization is funding the Psyche mission?", "1) NASA", "2) ESA", "3) Roscosmos", 1]
];

// Hard questions
global.hard_questions = [
    ["What scientific instrument will be used to study Psyche's composition?", "1) Gamma-ray and neutron spectrometer", "2) Magnetometer", "3) Solar panels", 1],
    ["What might the Psyche mission reveal about planet formation?", "1) Surface erosion", "2) Core composition", "3) Water content", 2],
    ["What is unique about Psyche compared to most asteroids?", "1) It's metallic", "2) It has an atmosphere", "3) It's covered in ice", 1],
    ["Which planet's core is Psyche's composition similar to?", "1) Mars", "2) Earth", "3) Jupiter", 2],
    ["How many orbital phases will Psyche go through while studying the asteroid?", "1) 4", "2) 8", "3) 12", 1]
];

// Initialize global variables
global.current_question = 0;
global.player_answer = -1;
global.score = 0;
global.quiz_completed = false;
global.timer = 300; // Set the timer for 5 seconds (300 frames)
global.result_text = "";
global.show_difficulty_selection = true; // Start with difficulty selection screen