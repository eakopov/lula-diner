// Scientist Selection and Quiz Initialization Logic

if (mouse_check_button_pressed(mb_left)) {
    if (place_meeting(mouse_x, mouse_y, obj_scientist_1_select)) {
        global.questions = global.scientist_1_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display at coordinates (100, 100)
    }
    else if (place_meeting(mouse_x, mouse_y, obj_scientist_2_select)) {
        global.questions = global.scientist_2_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display
    }
    else if (place_meeting(mouse_x, mouse_y, obj_scientist_3_select)) {
        global.questions = global.scientist_3_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display
    }
    else if (place_meeting(mouse_x, mouse_y, obj_scientist_4_select)) {
        global.questions = global.scientist_4_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display
    }
    else if (place_meeting(mouse_x, mouse_y, obj_scientist_5_select)) {
        global.questions = global.scientist_5_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display
    }
    else if (place_meeting(mouse_x, mouse_y, obj_scientist_6_select)) {
        global.questions = global.scientist_6_questions;
        global.current_question_index = 0;
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Create question display
    }
}

// Questions for Scientist 1 (Chemistry)
global.scientist_1_questions = [
    ["What is H2O?", "1) Water", "2) Oxygen", "3) Hydrogen", 1],
    ["What is the chemical symbol for Sodium?", "1) S", "2) Na", "3) N", 2],
    ["What is the atomic number of Oxygen?", "1) 6", "2) 8", "3) 12", 2],
    ["What is the common name for H2SO4?", "1) Sulfuric Acid", "2) Hydrochloric Acid", "3) Nitric Acid", 1],
    ["What is the pH of pure water?", "1) 7", "2) 5", "3) 9", 1]
];

// Questions for Scientist 2 (Physics)
global.scientist_2_questions = [
    ["What is the speed of light?", "1) 300,000 km/s", "2) 150,000 km/s", "3) 1,000 km/s", 1],
    ["Who is the father of modern physics?", "1) Newton", "2) Einstein", "3) Galileo", 2],
    ["What is the unit of force?", "1) Joule", "2) Newton", "3) Watt", 2],
    ["What is the formula for acceleration?", "1) F=ma", "2) a=d/t", "3) a=(v-u)/t", 3],
    ["What is absolute zero?", "1) 0°C", "2) -273.15°C", "3) -100°C", 2]
];

// Questions for Scientist 3 (General Science)
global.scientist_3_questions = [
    ["What is the boiling point of water?", "1) 100°C", "2) 90°C", "3) 110°C", 1],
    ["What planet is known as the Red Planet?", "1) Venus", "2) Mars", "3) Jupiter", 2],
    ["What is the most abundant gas in Earth's atmosphere?", "1) Oxygen", "2) Nitrogen", "3) Carbon Dioxide", 2],
    ["What is the chemical symbol for Gold?", "1) Au", "2) Ag", "3) Fe", 1],
    ["What is the hardest natural substance?", "1) Diamond", "2) Graphite", "3) Iron", 1]
];

// Questions for Scientist 4 (Engineering)
global.scientist_4_questions = [
    ["What is the primary material used in construction of the Eiffel Tower?", "1) Steel", "2) Iron", "3) Concrete", 2],
    ["What is the unit for electrical resistance?", "1) Volt", "2) Ampere", "3) Ohm", 3],
    ["Which law relates voltage, current, and resistance?", "1) Newton's Law", "2) Ohm's Law", "3) Faraday's Law", 2],
    ["What is the function of a capacitor in a circuit?", "1) Store charge", "2) Increase current", "3) Reduce voltage", 1],
    ["What material is used for insulation in electrical wiring?", "1) Copper", "2) Plastic", "3) Steel", 2]
];

// Questions for Scientist 5 (Biology)
global.scientist_5_questions = [
    ["What is the powerhouse of the cell?", "1) Nucleus", "2) Mitochondria", "3) Ribosome", 2],
    ["What is the largest organ in the human body?", "1) Liver", "2) Skin", "3) Heart", 2],
    ["Which blood cells help fight infection?", "1) Red blood cells", "2) White blood cells", "3) Platelets", 2],
    ["What is the DNA molecule shaped like?", "1) Single helix", "2) Double helix", "3) Triple helix", 2],
    ["Which organ is responsible for pumping blood?", "1) Brain", "2) Liver", "3) Heart", 3]
];

// Questions for Scientist 6 (Astronomy)
global.scientist_6_questions = [
    ["What is the closest planet to the Sun?", "1) Mercury", "2) Venus", "3) Earth", 1],
    ["What is the largest planet in our solar system?", "1) Jupiter", "2) Saturn", "3) Uranus", 1],
    ["What galaxy do we live in?", "1) Andromeda", "2) Milky Way", "3) Triangulum", 2],
    ["What is the Sun primarily composed of?", "1) Helium", "2) Hydrogen", "3) Oxygen", 2],
    ["Which planet is known for its rings?", "1) Neptune", "2) Uranus", "3) Saturn", 3]
];
