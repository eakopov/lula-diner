/// @description Insert description here
// You can write your code in this editor

draw_self();

// Display the final score
draw_set_color(c_black);
draw_text(96, 320, "Score: " + string(global.PointsCounter_ryth));

switch(global.rankRyth){
	case 0:
         draw_text(480, 320, "Rank: S");
    break;
	case 1:
         draw_text(480, 320, "Rank: A");
    break;
	case 2:
         draw_text(480, 320, "Rank: B");
    break;
	case 3:
         draw_text(480, 320, "Rank: C");
    break;
	case 4:
         draw_text(480, 320, "Rank: D");
    break;

    default:
        draw_text(480, 320, "Rank: E");
}	