/// @function                                   new_encounter(_enemies, _background);
/// @param {Array<Struct>}      _enemies        List of enemies
/// @param {Asset.GMSprite}     _background     Sprite for the battle background
/// @description                                Generates an instance of o_battle at the lowest depth 
///                                             containing the set of enemies and the sprite of the 
///                                             battle background.

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