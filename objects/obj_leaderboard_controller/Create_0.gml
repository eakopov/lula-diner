// Create Event of obj_leaderboard_controller
global.leaderboard = []; // Initialize leaderboard array
load_leaderboard(); // Load leaderboard from file if it exists


show_debug_message(json_encode({ leaderboard: global.leaderboard }));

/// obj_leaderboard_controller - Create Event

/// obj_leaderboard_controller - Create Event

global.leaderboard = [
    { name: "Alice", score: 50, achievements: ["Top Scientist", "Speed Runner"] },
    { name: "Bob", score: 40, achievements: ["Master Strategist"] },
    { name: "Charlie", score: 40, achievements: ["Quiz Champion", "High Scorer"] },
    { name: "David", score: 30, achievements: ["First Time Winner"] },
    { name: "Eve", score: 30, achievements: ["Llama Enthusiast"] },
    { name: "Frank", score: 30, achievements: ["Puzzle Master"] },
    { name: "Grace", score: 30, achievements: ["Speed Demon"] },
    { name: "Hank", score: 20, achievements: ["Asteroid Explorer"] },
    { name: "Ivy", score: 20, achievements: ["Trivia Genius"] },
    { name: "Jack", score: 10, achievements: ["Final Boss Survivor"] }
];

