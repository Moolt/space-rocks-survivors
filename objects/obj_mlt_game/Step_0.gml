if(global.mlt_current_score >= 500) {
	API.achievement_unlock("sr_demo_winner");
}

if(displayed_score < global.mlt_current_score) {
    displayed_score += 5;
    
    if(displayed_score > global.mlt_current_score) {
        displayed_score = global.mlt_current_score;
    }
}