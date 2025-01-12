global.mlt_is_selecting = true;

padding = 90;
spacing = 16;
max_cards = 3;
var card_center = MLT_GAME_WIDTH / 2 - MLT_CARD_WIDTH / 2;
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
    return padding + (MLT_GAME_HEIGHT - padding * 2) / max_cards * _index;
}

card = {
    icon: spr_mlt_loser,
    title: "+1 Lives",
    action: function() {
        show_debug_message("first");
    },
    unique: false,
    is_maxed_out : function() {
        return false;
    }
}

card2 = {
    icon: spr_mlt_loser,
    title: "-1 Speed",
    action: function() {
            show_debug_message("second");
    },
    unique: false,
    is_maxed_out : function() {
        return false;
    }
}

card3 = {
    icon: spr_mlt_loser,
    title: "+1 Defense",
    action: function() {
            show_debug_message("third");
    },
    unique: false,
    is_maxed_out : function() {
        return false;
    }
}

option = {
    bonus: card3,
    malus: card2,
}

option2 = {
    bonus: card,
    malus: card2,
}

card1 = instance_create_layer(card_center, get_card_y(0), "Instances", obj_mlt_card, { option: option });
card2 = instance_create_layer(card_center, get_card_y(1), "Instances", obj_mlt_card, { option: option2 });
card3 = instance_create_layer(card_center, get_card_y(2), "Instances", obj_mlt_card, { option: option });