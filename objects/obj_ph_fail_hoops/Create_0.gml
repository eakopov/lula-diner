// Randomly assign the failure type with a 70/30 chance
if (irandom(9) < 7) // 0 to 6 (70% chance)
{
    failure_type = "decrease_timer";
}
else // 3 to 9 (30% chance)
{
	failure_type = "decrease_timer";
    //failure_type = "end_game";
}

