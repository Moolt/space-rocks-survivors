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
    
    instance_destroy();
}

function get_card_y(_index) {
    return padding_y + (MLT_GAME_HEIGHT - padding_y * 2) / max_cards * _index;
}



bonuses = [
    {
        title: "+10% Max Speed",
        action: function() {
            global.mlt_max_speed += mlt_percent(global.mlt_max_speed, 10);
        }
    },
    {
        title: "+15% Max Speed",
        action: function() {
            global.mlt_max_speed += mlt_percent(global.mlt_max_speed, 15);
        }
    },
    {
        title: "+20% Max Speed",
        action: function() {
            global.mlt_max_speed += mlt_percent(global.mlt_max_speed, 20);
        }
    },
    {
        title: "+0.25 Max Speed",
        action: function() {
            global.mlt_max_speed += 0.25;
        }
    },
    {
        title: "+0.5 Max Speed",
        action: function() {
            global.mlt_max_speed += 0.5;
        }
    },
    {
        title: "+0.75 Max Speed",
        action: function() {
            global.mlt_max_speed += 0.75;
        }
    },
    {
        title: "+1 Armor",
        action: function() {
                show_debug_message("second");
        }
    },
];

maluses = [
    {
        title: "-1 Shoot speed",
        action: function() {
                show_debug_message("second");
        }
    },
    {
        title: "-10% Max speed",
        action: function() {
                show_debug_message("second");
        }
    },
];

function create_random_option() {
    var bonus = bonuses[irandom(array_length(bonuses) - 1)];
    var malus = maluses[irandom(array_length(maluses) - 1)];
    
    return { bonus: bonus, malus: malus };
}

card1 = instance_create_layer(card_center, get_card_y(0), "Instances", obj_mlt_card, { option: create_random_option() });
card2 = instance_create_layer(card_center, get_card_y(1), "Instances", obj_mlt_card, { option: create_random_option() });
card3 = instance_create_layer(card_center, get_card_y(2), "Instances", obj_mlt_card, { option: create_random_option() });