instance_deactivate_all(true);

units_ = [];

// Make enemy list members' battle units
for (var i = 0; i < array_length(enemy_list); i++)
{
    enemy_units_[i] = instance_create_depth(x+250+(i*10), y+68+(i*20), depth-10, o_battle_unit_enemy, enemy_list[i]);
    array_push(units_, enemy_units_[i]);
}

// Make the party's battle units
for (var i = 0; i < array_length(global.party); i++)
{
    party_units_[i] = instance_create_depth(x+70+(i*10), y+68+(i*15), depth-10, o_battle_unit_pc, global.party[i]);
    array_push(units_, party_units_[i]);
}