#macro MLT_STATS_CONTAINER_WIDTH 350

global.mlt_is_selecting = true;

h_offset = 130;
v_offset = 32 + 8; // stats container item spacing
label_y = 0; // stats container current label y

padding_y = 90;
padding_x = 45;
spacing = 16;
max_cards = 3;
var card_center = MLT_GAME_WIDTH / 2 - MLT_CARD_WIDTH / 2 + 50 + h_offset;
var index = 0;

card1 = noone;
card2 = noone;
card3 = noone;

function select(_option) {
    _option.bonus.action();
    _option.malus.action();
    
    with(obj_mlt_card_spawner) {
        instance_destroy(card1);
        instance_destroy(card2);
        instance_destroy(card3);
    }
    
    room_goto(room_mlt_space_rocks_game);
}

function get_card_y(_index) {
    return padding_y + (MLT_GAME_HEIGHT - padding_y * 2) / max_cards * _index;
}

bonuses = [
    {
        group: 1,
        title: "+40% Max Speed",
        action: function() {
            global.mlt_max_speed += mlt_percent(global.mlt_max_speed, 40);
        }
    },
    {
        group: 1,
        title: "+50% Max Speed",
        action: function() {
            global.mlt_max_speed += mlt_percent(global.mlt_max_speed, 50);
        }
    },
    {
        group: 2,
        title: "+40% Acceleration",
        action: function() {
            global.mlt_acceleration += mlt_percent(global.mlt_acceleration, 40);
        }
    },
    {
        group: 2,
        title: "+45% Acceleration",
        action: function() {
            global.mlt_acceleration += mlt_percent(global.mlt_acceleration, 45);
        }
    },
    {
        group: 3,
        title: "+1 Live",
        action: function() {
            global.mlt_max_lives += 1;
        }
    },
    {
        group: 3,
        title: "+1 Live",
        action: function() {
            global.mlt_max_lives += 1;
        }
    },
    {
        group: 3,
        title: "+1 Live",
        action: function() {
            global.mlt_max_lives += 1;
        }
    },
    {
        group: 3,
        title: "+1 Live",
        action: function() {
            global.mlt_max_lives += 1;
        }
    },
    {
        group: 3,
        title: "+2 Lives",
        action: function() {
            global.mlt_max_lives += 2;
        }
    },
    {
        group: 4,
        title: "+50 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score += 50;
        }
    },
    {
        group: 4,
        title: "+75 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score += 75;
        }
    },
    {
        group: 5,
        title: "+20% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1.20;
        }
    },
    {
        group: 5,
        title: "+25% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1.25;
        }
    },
    {
        group: 6,
        title: "+1 Bullet damage",
        action: function() {
            global.mlt_bullet_damage += 1;
        }
    },
    {
        group: 6,
        title: "+1 Bullet damage",
        action: function() {
            global.mlt_bullet_damage += 1;
        }
    },
    {
        group: 7,
        title: "+1 Bullet on shot",
        action: function() {
            global.mlt_shot_amount += 1;
        }
    },
    {
        group: 7,
        title: "+1 Bullet on shot",
        action: function() {
            global.mlt_shot_amount += 1;
        }
    },
    {
        group: 7,
        title: "+2 Bullet on shot",
        action: function() {
            global.mlt_shot_amount += 2;
        }
    },
    {
        group: 8,
        title: "+20% Shooting speed",
        action: function() {
            global.mlt_shoot_speed -= mlt_percent(global.mlt_shoot_speed, 20);
        }
    },
    {
        group: 8,
        title: "+30% Shooting speed",
        action: function() {
            global.mlt_shoot_speed -= mlt_percent(global.mlt_shoot_speed, 30);
        }
    },
    {
        group: 8,
        title: "+40% Shooting speed",
        action: function() {
            global.mlt_shoot_speed -= mlt_percent(global.mlt_shoot_speed, 40);
        }
    },
    {
        group: 9,
        title: "+Increase projectile spread",
        action: function() {
            global.mlt_shot_spread += 10;
        }
    },
    {
        group: 9,
        title: "+Increase projectile spread",
        action: function() {
            global.mlt_shot_spread += 10;
        }
    },
];

#macro MIN_MAX_SPEED 0.5
#macro MIN_ACCELERATION 0.05
#macro MIN_LIVES 1
#macro MIN_BONUS_SCORE 0
#macro MIN_SCORE_MULTIPLICATOR 0
#macro MIN_BULLET_DAMAGE 1
#macro MIN_BULLET_ON_SHOT 1
#macro MIN_PROJECTILE_SPREAD 5

maluses = [
    {
        group: 1,
        title: "-15% Max Speed",
        action: function() {
            global.mlt_max_speed -= mlt_percent(global.mlt_max_speed, 15);
            global.mlt_max_speed = max(MIN_MAX_SPEED, global.mlt_max_speed);
        }
    },
    {
        group: 1,
        title: "-20% Max Speed",
        action: function() {
            global.mlt_max_speed -= mlt_percent(global.mlt_max_speed, 20);
            global.mlt_max_speed = max(MIN_MAX_SPEED, global.mlt_max_speed);
        }
    },
    {
        group: 1,
        title: "-25% Max Speed",
        action: function() {
            global.mlt_max_speed -= mlt_percent(global.mlt_max_speed, 25);
            global.mlt_max_speed = max(MIN_MAX_SPEED, global.mlt_max_speed);
        }
    },
    {
        group: 2,
        title: "-25% Acceleration",
        action: function() {
            global.mlt_acceleration -= mlt_percent(global.mlt_acceleration, 25);
            global.mlt_acceleration = max(MIN_ACCELERATION, global.mlt_acceleration);
        }
    },
    {
        group: 2,
        title: "-30% Acceleration",
        action: function() {
            global.mlt_acceleration -= mlt_percent(global.mlt_acceleration, 30);
            global.mlt_acceleration = max(MIN_ACCELERATION, global.mlt_acceleration);
        }
    },
    {
        group: 2,
        title: "-40% Acceleration",
        action: function() {
            global.mlt_acceleration -= mlt_percent(global.mlt_acceleration, 40);
            global.mlt_acceleration = max(MIN_ACCELERATION, global.mlt_acceleration);
        }
    },
    {
        group: 2,
        title: "-45% Acceleration",
        action: function() {
            global.mlt_acceleration -= mlt_percent(global.mlt_acceleration, 45);
            global.mlt_acceleration = max(MIN_ACCELERATION, global.mlt_acceleration);
        }
    },
    {
        group: 3,
        title: "-1 Live",
        action: function() {
            global.mlt_max_lives -= 1;
            global.mlt_max_lives = max(MIN_LIVES, global.mlt_max_lives);
        }
    },
    {
        group: 3,
        title: "-1 Live",
        action: function() {
            global.mlt_max_lives -= 1;
            global.mlt_max_lives = max(MIN_LIVES, global.mlt_max_lives);
        }
    },
    {
        group: 4,
        title: "-25 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score -= 25;
            global.mlt_bonus_score = max(MIN_BONUS_SCORE, global.mlt_bonus_score);
        }
    },
    {
        group: 4,
        title: "-50 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score -= 50;
            global.mlt_bonus_score = max(MIN_BONUS_SCORE, global.mlt_bonus_score);
        }
    },
    {
        group: 4,
        title: "-25 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score -= 25;
            global.mlt_bonus_score = max(MIN_BONUS_SCORE, global.mlt_bonus_score);
        }
    },
    {
        group: 4,
        title: "-50 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score -= 50;
            global.mlt_bonus_score = max(MIN_BONUS_SCORE, global.mlt_bonus_score);
        }
    },
    {
        group: 4,
        title: "-75 Bonus score on kill",
        action: function() {
            global.mlt_bonus_score -= 75;
            global.mlt_bonus_score = max(MIN_BONUS_SCORE, global.mlt_bonus_score);
        }
    },
    {
        group: 5,
        title: "-10% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1/1.1;
            global.mlt_score_multiplicator = max(MIN_SCORE_MULTIPLICATOR, global.mlt_score_multiplicator);
        }
    },
    {
        group: 5,
        title: "-15% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1/1.15;
            global.mlt_score_multiplicator = max(MIN_SCORE_MULTIPLICATOR, global.mlt_score_multiplicator);
        }
    },
    {
        group: 5,
        title: "-20% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1/1.20;
            global.mlt_score_multiplicator = max(MIN_SCORE_MULTIPLICATOR, global.mlt_score_multiplicator);
        }
    },
    {
        group: 5,
        title: "-25% Score on kill",
        action: function() {
            global.mlt_score_multiplicator *= 1/1.25;
            global.mlt_score_multiplicator = max(MIN_SCORE_MULTIPLICATOR, global.mlt_score_multiplicator);
        }
    },
    {
        group: 6,
        title: "-1 Bullet damage",
        action: function() {
            global.mlt_bullet_damage -= 1;
            global.mlt_bullet_damage = max(MIN_BULLET_DAMAGE, global.mlt_bullet_damage);
        }
    },
    {
        group: 6,
        title: "-1 Bullet damage",
        action: function() {
            global.mlt_bullet_damage -= 1;
            global.mlt_bullet_damage = max(MIN_BULLET_DAMAGE, global.mlt_bullet_damage);
        }
    },
    {
        group: 7,
        title: "-1 Bullet on shot",
        action: function() {
            global.mlt_shot_amount -= 1;
            global.mlt_shot_amount = max(MIN_BULLET_ON_SHOT, global.mlt_shot_amount);
        }
    },
    {
        group: 8,
        title: "-20% Shooting speed",
        action: function() {
            global.mlt_shoot_speed += mlt_percent(global.mlt_shoot_speed, 20);
        }
    },
    {
        group: 8,
        title: "-30% Shooting speed",
        action: function() {
            global.mlt_shoot_speed += mlt_percent(global.mlt_shoot_speed, 30);
        }
    },
    {
        group: 8,
        title: "-40% Shooting speed",
        action: function() {
            global.mlt_shoot_speed += mlt_percent(global.mlt_shoot_speed, 40);
        }
    },
    {
        group: 9,
        title: "-Decrease projectile spread",
        action: function() {
            global.mlt_shot_spread -= 10;
            global.mlt_shot_spread = max(MIN_PROJECTILE_SPREAD, global.mlt_shot_spread);
        }
    },
    {
        group: 9,
        title: "-Decrease projectile spread",
        action: function() {
            global.mlt_shot_spread -= 10;
            global.mlt_shot_spread = max(MIN_PROJECTILE_SPREAD, global.mlt_shot_spread);
        }
    },
];

function create_random_option() {
    var bonus = bonuses[irandom(array_length(bonuses) - 1)];
    var malus = maluses[irandom(array_length(maluses) - 1)];
    
    while(malus.group == bonus.group) {
        malus = maluses[irandom(array_length(maluses) - 1)];
    }
    
    return { bonus: bonus, malus: malus };
}

card1 = instance_create_layer(card_center, get_card_y(0), "Instances", obj_mlt_card, { option: create_random_option() });
card2 = instance_create_layer(card_center, get_card_y(1), "Instances", obj_mlt_card, { option: create_random_option() });
card3 = instance_create_layer(card_center, get_card_y(2), "Instances", obj_mlt_card, { option: create_random_option() });