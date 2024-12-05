function select_random_questions(question_array, num_questions) {
    var temp_array = [];
    for (var i = 0; i < array_length(question_array); i++) {
        array_push(temp_array, question_array[i]);
    }

    var selected_questions = [];
    while (array_length(selected_questions) < num_questions && array_length(temp_array) > 0) {
        var random_index = irandom(array_length(temp_array) - 1);
        array_push(selected_questions, temp_array[random_index]);

        // Remove the selected question from temp_array
        for (var j = random_index; j < array_length(temp_array) - 1; j++) {
            temp_array[j] = temp_array[j + 1];
        }
        array_resize(temp_array, array_length(temp_array) - 1);
    }

    return selected_questions;
}
