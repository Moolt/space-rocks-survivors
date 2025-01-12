spawn_chances = [
    {
        object: obj_mlt_rock_big,
        base_chance: 500,
        chance_stage_increment: 0
    },
    {
        object: obj_mlt_rock_small,
        base_chance: 300,
        chance_stage_increment: 0
    },
];

function get_max_chance() {
    var max_chance = 0;
    for(var _i = 0; _i < array_length(spawn_chances); _i++) {
        var current = spawn_chances[_i];
        max_chance += current.base_chance + current.chance_stage_increment * obj_mlt_game.stage;
    }
    
    return max_chance;
}

function get_enemy_to_spawn() {
    var random_value = random_range(0, get_max_chance());
    var current_chance = 0;
    
    for(var _i = 0; _i < array_length(spawn_chances); _i++) {
        var current = spawn_chances[_i];
        current_chance += current.base_chance + current.chance_stage_increment * obj_mlt_game.stage;
        
        if(random_value < current_chance) {
            return current.object;    
        }        
    }
}

function spawn_enemy() {
    var angle = random(2 * pi);

    // Calculate the x and y coordinates using the angle and radius
    var x_pos = obj_mlt_player.x + 1280 * cos(angle);
    var y_pos = obj_mlt_player.y + 720 * sin(angle);

    // Create the object at the calculated position
    instance_create_layer(x_pos, y_pos, "Instances", obj_mlt_enemy_spawner.get_enemy_to_spawn());
}

for(var _i = 0; _i < 5; _i++) {
    spawn_enemy();
}

spawn_rate_seconds = 1;
spawn_time_source = time_source_create(time_source_game, spawn_rate_seconds, time_source_units_seconds, spawn_enemy, [], -1);

time_source_start(spawn_time_source);