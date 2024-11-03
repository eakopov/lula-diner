// Initialize question and answer data in a 2D array
global.questions = [
    ["What is the capital of France?", "1) London", "2) Paris", "3) Berlin", 2],
    ["What is the capital of Germany?", "1) Berlin", "2) Munich", "3) Hamburg", 1],
    ["What is the capital of the USA?", "1) New York", "2) Washington D.C.", "3) Los Angeles", 2]
];

// Initialize global variables
global.current_question = 0;
global.player_answer = -1;
global.score = 0;
global.quiz_completed = false;
global.timer = 300;  // Set a timer for 5 seconds per question (300 frames)
global.result_text = "";  // Text for displaying if the answer was correct or not
