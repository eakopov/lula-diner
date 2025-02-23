
var results = [
    global.clothingResult,
    global.pizzaResult,
    global.jumpResult,
    global.quizResult,
    global.rhythmResult
];

show_debug_message("global.clothingResult: " + string(global.clothingResult));
show_debug_message("global.pizzaResult: " + string(global.pizzaResult));
show_debug_message("global.jumpResult: " + string(global.jumpResult));
show_debug_message("global.quizResult: " + string(global.quizResult));
show_debug_message("global.rhythmResult: " + string(global.rhythmResult));



// Initialize the total score.
var totalScore = 0;

// Iterate through the results array.
for (var i = 0; i < 5; i++) {
       
    // Assign points based on the answer.
    if (results[i] == "S") {
        totalScore += 10;
		show_debug_message("adding 10 points to result score");
    } else if (results[i] == "A") {
        totalScore += 5;
    } else if (results[i] == "B") {
        totalScore += 3;
    } else if (results[i] == "C") {
        totalScore += 1;
    }
}

global.ResultsPoints = totalScore; 
show_debug_message("total score is " + string(totalScore));

SCALE_MULTIPLIER = 1;

POINTS_LOW = 10;
POINTS_MEDIUM = 25;
POINTS_HIGH = 45;

ending = "";

ending_sprite = spr_lula_walk;

//Select ending case

if (global.ResultsPoints < POINTS_LOW || global.ResultsPoints == POINTS_LOW) {
	ending = "low";
}

else if (global.ResultsPoints > POINTS_LOW && (global.ResultsPoints < POINTS_MEDIUM || global.ResultsPoints == POINTS_MEDIUM)) {
	ending = "medium";
}

else if ((global.ResultsPoints > POINTS_MEDIUM  || global.ResultsPoints == POINTS_MEDIUM) && global.ResultsPoints < POINTS_HIGH) {
	ending ="high";	
}

else if (global.ResultsPoints > POINTS_HIGH || global.ResultsPoints == POINTS_HIGH) {
	ending = "best";	
}