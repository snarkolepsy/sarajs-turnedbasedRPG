/// @function                       new_encounter(_enemies, _background);
/// @param {string}  _enemies       ...
/// @param {string}  _background    ...
/// @description                    ...

function new_encounter(_enemies, _background)
{
    instance_create_depth
    (
        camera_get_view_x(view_camera[0]),
        camera_get_view_y(view_camera[0]),
        -9999,
        o_battle,
        {
            enemy_list : _enemies,
            creator : id,
            battle_background : _background
        }
    );
}