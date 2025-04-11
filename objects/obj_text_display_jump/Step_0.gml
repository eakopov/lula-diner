if (keyboard_check_pressed(vk_space))
{
	audio_stop_all();
	
	with (obj_space_debris) {
		instance_destroy();
	
	}
	if(global.jump_score > global.best_jump_score){
	
	global.best_jump_score = global.jump_score;
	
	if(global.mode == "story") {
		global.new_best_score = true;
	  }
	  
	}
    // Determine the player's rank based on global.jump_score
    if (global.jump_score >= 10000) {
        global.jumpResults = "S";
    } 
    else if (global.jump_score >= 7500) {
        global.jumpResults = "A";
    } 
    else if (global.jump_score >= 5000) {
        global.jumpResults = "B";
    } 
    else {
        global.jumpResults = "C"; // Anything below B is a C
    }
	
	audio_stop_sound(global.bonusmusic_id);
    global.bonusmusic_id = -1;
	audio_stop_sound(global.jumpmusic_id);
    global.jumpmusic_id = -1;
    audio_stop_sound(global.time_warning_music_id);
	global.time_warning_music_id = -1;
	
    global.jump_score = 0;
    global.jump_timer = 200 * room_speed; // 200 seconds (in steps)

    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
	global.time_warning_triggered = false;
	global.jumpmusic_Began = false;

    if(global.mode == "story"){
		 room_goto_next();
	} else { 
		 room_goto(room_intro);
	}
} 

// If a question is in progress (in the bonus round)
if (global.question_in_progress) {

    // If the user has NOT answered yet, wait for key input (1–4)
    if (!global.question_answered) {
        // Check which key is pressed
        if (keyboard_check_pressed(ord("1")) ||
            keyboard_check_pressed(ord("2")) ||
            keyboard_check_pressed(ord("3")) ||
            keyboard_check_pressed(ord("4")))
        {
            // Convert the pressed key to an answer index (0,1,2,3)
            var selected_answer;
            if (keyboard_check_pressed(ord("1"))) { selected_answer = 0; }
            if (keyboard_check_pressed(ord("2"))) { selected_answer = 1; }
            if (keyboard_check_pressed(ord("3"))) { selected_answer = 2; }
            if (keyboard_check_pressed(ord("4"))) { selected_answer = 3; }
            
            // Retrieve the question data
            var qIndex = global.bonus_question_index;
            var question_data = global.mc_questions[qIndex];
            var correct_index = question_data[5]; // The correct answer index
            
            // Check correctness
            if (selected_answer == correct_index) {
                global.current_answer_feedback = "Correct! Great job! +200 Points :)";
				global.jump_score+=200;
            } else {
                // Display the corresponding incorrect feedback
                global.current_answer_feedback = global.mc_incorrect_feedback[qIndex];
            }
            
            // The user has answered
            global.question_answered = true;
            // Start a 5-second feedback timer
            global.answer_feedback_timer = 5 * room_speed;
        }
    }
    else {
        // The user has answered, so show feedback for at least 5 seconds
        global.answer_feedback_timer -= 1;
        
        if (global.answer_feedback_timer <= 0) {
            // After 5 seconds, move to the next question
            global.question_in_progress = false; 
            global.question_answered = false;
            global.current_answer_feedback = "";
            global.bonus_question_index += 1;
        }
    }
}

if (global.jump_timer <= 0) {
  audio_stop_sound(global.bonusmusic_id);
}

