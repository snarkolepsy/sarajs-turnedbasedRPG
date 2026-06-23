
// Party data
global.party = 
[
	{
		name: "Lulu",
		hp: 89,
		hp_max: 89,
		mp: 10,
		mp_max: 15,
		strength: 6,
		sprites :  
        {
            idle: s_lulu_idle,
            attack: s_lulu_attack,
            defend: s_lulu_defend,
            down: s_lulu_down
        },
		actions : []
	}
	,
	{
		name: "Questy",
		hp: 18,
		hp_max: 44,
		mp: 20,
		mp_max: 30,
		strength: 4,
		sprites : 
        {
            idle: s_questy_idle,
            attack: s_questy_cast,
            cast: s_questy_cast,
            down: s_questy_down
        },
		actions : []
	}
];

// Enemy Data
global.enemies =
{
	slime_green:
	{
		name: "Slime",
		hp: 30,
		hp_max: 30,
		mp: 0,
		mp_max: 0,
		strength: 5,
		sprites: 
        { 
            idle: s_slime,
            attack: s_slime_attack
        },
		actions: [],
		xpValue : 15,
		ai_script : function()
		{
			// enemy turn ai goes here
		}
	}
	,
	bat: 
	{
		name: "Bat",
		hp: 15,
		hp_max: 15,
		mp: 0,
		mp_max: 0,
		strength: 4,
		sprites: 
        {
            idle: s_bat,
            attack: s_bat_attack
        },
		actions: [],
		xp_value : 18,
		ai_script : function()
		{
			// enemy turn ai goes here
		}
	}
};