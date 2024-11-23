global.psyche_mission_phases = [
        "(Press Spacebar to Skip) The NASA Psyche Mission has six key phases (kind of like hoops to jump through!) that allows the mission to go off successfully and efficiently!",
        "You Jumped Through The First Phase: The Initial Proposal Phase! Now time to develop the concept study! The concept study is documentation on the NASA Psyche Mission that can be given to NASA reviewers that states the Mission’s concept, purpose, and the plan behind it. This concept study can be a paper of over 1000 pages and can take over 9 hours to present in what are called “site visits”! Let’s keep going!",
        "You Jumped Through The Second Phase: Preliminary Design Phase! This is where the whole team of scientists and engineers come together to design the necessary instruments for the study of the Psyche Asteroid! Mainly the spacecraft! The designs are then reviewed until official approval is given! We got approved fortunately, jumping through these hoops is paying off!",
        "You Jumped Through The Third Phase: Final Design Phase! The team begins to construct key instruments crucial to the mission like the magnetometer, multispectral imager, and the gamma ray and neutron spectrometer! With a combination of radio and laser telecommunication for the Asteroid and future probe being developed in this phase, we are ready for the next phase!",
        "You Jumped Through The Fourth Phase: Assembling and Testing the Spacecraft and instruments! The key instruments designed in our last phase, one being the magnetometer, are tested along with the spacecraft. The spacecraft is subjected to vibration testing, environmental thermal-vacuum testing and electromagnetic interference to ensure that no conditions will deter it! Let’s ship the spacecraft off so we can launch it!",
        "You Jumped Through The Fifth Phase: Assuming you jumped through all the previous hoops (or phases) for the Psyche Mission our spacecraft is now in space, using Mars’ gravity to intersect the Psyche Asteroid’s orbit around the sun. The spacecraft will orbit the Psyche asteroid, monitoring it, measuring its rotation, and mapping the elements and topography of it using the key instruments on board that send data back to earth!",
        "You Jumped Through The Sixth Phase: Finishing up the mission! The space flight systems are decommissioned and final deliverables are made that document any findings the spacecraft gathered! Good job! You jumped through all the necessary hoops! But there’s still more to be done!"
    ];

if (!variable_global_exists("current_text_index")) {
    global.current_text_index = 0; // Start at the introduction
}

global.psyche_fun_facts = [
    "Powerup! Fun Fact: The Psyche asteroid is within the belt between Mars and Jupiter and is thought to be a type of exposed core from what is called a protoplanet!",
    "Powerup! Fun Fact: The Psyche asteroid takes the cake for being the biggest asteroid that is metal-rich that we’ve ever discovered, having nickel and iron within it.",
    "Powerup! Fun Fact: The Psyche mission spacecraft uses a system known as solar-electric propulsion, powered by many solar panels working together!",
    "Powerup! Fun Fact: The Psyche mission uses the Psyche asteroid to study how planets form!",
    "Powerup! Fun Fact: The orbit of the Psyche asteroid is 3 times further away from the Sun than the Earth’s is!",
    "Powerup! Fun Fact: The Psyche spacecraft has a gamma ray on board that determines what the asteroid is made of!",
    "Powerup! Fun Fact: The NASA Psyche mission is a collaborative effort with Arizona State University, a college popular for its focus on innovation!",
    "Powerup! Fun Fact: A gravity assist maneuver will be carried out by the Psyche spacecraft in 2026 so the spacecraft can be closer to the asteroid belt.",
    "Powerup! Fun Fact: The Psyche asteroid is thought to be able to potentially clue us in on the collisions that created our solar system!",
    "Powerup! Fun Fact: The name for the Psyche asteroid comes from the Greek goddess of the soul!"
];

if (!variable_global_exists("current_fun_fact")) {
    global.current_fun_fact = ""; // Holds the current fun fact text
}

if (!variable_global_exists("show_fun_fact")) {
    global.show_fun_fact = false; // Controls whether the fun fact is shown
}

// Global array of mission setbacks
global.mission_setbacks = [
    "Mission Setback: Delay in communication with the spacecraft caused by a solar storm.",
    "Mission Setback: One of our key instruments had a power outage!",
    "Mission Setback: Unexpected trajectory adjustment needed due to asteroid debris."
];

