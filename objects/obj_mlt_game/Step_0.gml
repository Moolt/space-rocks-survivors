if(displayed_score < global.mlt_current_score) {
    displayed_score += 5;
    
    if(displayed_score > global.mlt_current_score) {
        displayed_score = global.mlt_current_score;
    }
}