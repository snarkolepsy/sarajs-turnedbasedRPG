instance_deactivate_all(true);

units_ = [];
turn_ = 0;
unit_turn_order_ = [];
unit_render_order_ = [];

// Make enemy list members' battle units
for (var _i = 0; _i < array_length(enemy_list); _i++)
{
    enemy_units_[_i] = instance_create_depth(x+250+(_i*10), y+68+(_i*20), depth-10, o_battle_unit_enemy, enemy_list[_i]);
    array_push(units_, enemy_units_[_i]);
}

// Make the party's battle units
for (var _i = 0; _i < array_length(global.party); _i++)
{
    party_units_[_i] = instance_create_depth(x+70-(_i*10), y+68+(_i*15), depth-10, o_battle_unit_pc, global.party[_i]);
    array_push(units_, party_units_[_i]);
}

// Shuffle the turn order
unit_turn_order_ = array_shuffle(units_);

// Get rendering order
refresh_render_order_ = function() 
{
    unit_render_order_ = [];
    array_copy(unit_render_order_, 0, units_, 0, array_length(units_));
    array_sort(unit_render_order_, function(_1, _2)
    {
        return _1.y - _2.y;
    });
};
refresh_render_order_();