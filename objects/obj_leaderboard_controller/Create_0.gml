// Create Event of obj_leaderboard_controller
global.leaderboard = []; // Initialize leaderboard array
load_leaderboard(); // Load leaderboard from file if it exists


show_debug_message(json_encode({ leaderboard: global.leaderboard }));

/// obj_leaderboard_controller - Create Event

/// obj_leaderboard_controller - Create Event

global.leaderboard = [
    { name: "Alice", score: 1200, achievements: ["Top Scientist", "Speed Runner"] },
    { name: "Bob", score: 1100, achievements: ["Master Strategist"] },
    { name: "Charlie", score: 1000, achievements: ["Quiz Champion", "High Scorer"] },
    { name: "David", score: 950, achievements: ["First Time Winner"] },
    { name: "Eve", score: 900, achievements: ["Llama Enthusiast"] },
    { name: "Frank", score: 850, achievements: ["Puzzle Master"] },
    { name: "Grace", score: 800, achievements: ["Speed Demon"] },
    { name: "Hank", score: 750, achievements: ["Asteroid Explorer"] },
    { name: "Ivy", score: 700, achievements: ["Trivia Genius"] },
    { name: "Jack", score: 650, achievements: ["Final Boss Survivor"] }
];

