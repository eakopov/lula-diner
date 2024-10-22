// Initialize global variables
global.PointsCounter = 0;
global.questions_answered = 0;
global.current_question = 0;
global.player_answer = -1;  // Initialize as -1 to indicate no answer is selected
global.scientist_1_selected = false;
global.scientist_2_selected = false;

// Store questions in a 2D array [Question, Answer1, Answer2, Answer3, CorrectAnswerIndex]
global.questions = [
    ["What is the capital of France?", "1) London", "2) Paris", "3) Berlin", 2],
    ["What is the capital of Germany?", "1) Berlin", "2) Munich", "3) Hamburg", 1],
    ["What is the capital of the USA?", "1) New York", "2) Los Angeles", "3) Washington D.C.", 3]
];
