// Draw the background art
draw_sprite(battle_background, 0, x, y);

// Draw battle units in correct depth order
var _unit_with_current_turn = unit_turn_order_[turn_].id;
for (var _i = 0; _i < array_length(unit_render_order_); _i++)
{
    with (unit_render_order_[_i])
    {
        draw_self();
    }
}

// Draw UI box borders 
draw_sprite_stretched(s_box, 0, x+75, y+120, 245, 60);
draw_sprite_stretched(s_box, 0, x, y+120, 74, 60);