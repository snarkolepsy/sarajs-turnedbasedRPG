
// Party data
global.party = 
[
	{
		name: "Lulu",
		hp: 89,
		hpMax: 89,
		mp: 10,
		mpMax: 15,
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
		hpMax: 44,
		mp: 20,
		mpMax: 30,
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
	slimeG: 
	{
		name: "Slime",
		hp: 30,
		hpMax: 30,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: 
        { 
            idle: s_slime,
            attack: s_slime_attack
        },
		actions: [],
		xpValue : 15,
		AIscript : function()
		{
			//enemy turn ai goes here
		}
	}
	,
	bat: 
	{
		name: "Bat",
		hp: 15,
		hpMax: 15,
		mp: 0,
		mpMax: 0,
		strength: 4,
		sprites: 
        {
            idle: s_bat,
            attack: s_bat_attack
        },
		actions: [],
		xpValue : 18,
		AIscript : function()
		{
			//enemy turn ai goes here
		}
	}
};