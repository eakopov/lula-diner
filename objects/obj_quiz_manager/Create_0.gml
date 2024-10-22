// Initialize question and answer data in a 2D array
global.questions = [
    ["What is the capital of France?", "1) London", "2) Paris", "3) Berlin", 2],
    ["What is the capital of Germany?", "1) Berlin", "2) Munich", "3) Hamburg", 1],
    ["What is the capital of the USA?", "1) New York", "2) Washington D.C.", "3) Los Angeles", 2]
];

// Start with the first question
global.current_question = 0;
global.player_answer = -1;  // Initialize player answer to -1 (no answer selected yet)

// Position of the frame on the screen
frame_x = 300;  // X coordinate for the left side of the frame
frame_y = 150;  // Y coordinate for the top of the frame

// Frame dimensions
frame_width = 500;  // Width of the frame
frame_height = 300;  // Height of the frame

// Text offset inside the frame
question_x_offset = 20;  // Offset from the frame border for question text
answer_y_offset = 40;    // Space between each answer

// Initialize other variables like current question and player answer
global.current_question = 0;
global.player_answer = -1;  // No answer selected at the start
function check_answer() {
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];  // The correct answer is stored at index 4 of the question array

    // Check if the player's answer matches the correct answer
    if (global.player_answer == correct_answer) {
        show_message("Correct Answer!");
    } else {
        show_message("Wrong Answer!");
    }

    // Move to the next question
    global.current_question += 1;

    // Check if there are more questions
    if (global.current_question >= array_length(global.questions)) {
        show_message("Quiz completed!");
        room_goto_next();  // Move to the next room or restart quiz
    }

    // Reset the player's answer
    global.player_answer = -1;
}
