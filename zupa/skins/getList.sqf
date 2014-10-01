Men_Clothing = [];
_playerItems = magazines player;
lbClear 20014;
if( "Skin_FR_OHara_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing1;};
if("Skin_Soldier1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing2;};
if("Skin_Ins_Soldier_GL_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing3;};
if("Skin_GUE_Soldier_Crew_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing4;};
if("Skin_Graves_Light_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing5;};
if("Skin_CZ_Special_Forces_GL_DES_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing6;};
if("Skin_Bandit2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing7;};
if("Skin_Soldier_Bodyguard_AA12_PMC_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +   Clothing8;};
if("Skin_TK_INS_Soldier_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  Clothing9;};
if("Skin_Survivor2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing10;};
if("Skin_FR_Rodriguez_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing11;};
// Overwatch
//// hero
if("Skin_Drake_Light_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing12;};
if("Skin_Soldier_Sniper_PMC_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing13;};
if("Skin_CZ_Soldier_Sniper_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing14;};
if("Skin_Camo1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing15;};
if("Skin_Rocket_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing16;};
if("Skin_Sniper1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing17;};
if("Skin_Soldier_TL_PMC_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing18;};
if("Skin_GUE_Soldier_Sniper_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing19;};
if("Skin_TK_INS_Warlord_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing20;};
/// bandit
if("Skin_Bandit1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing21;};
if("Skin_Bandit2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing22;};
if("Skin_BanditW1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing23;};
if("Skin_BanditW2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing+ Clothing24;};
if("Skin_GUE_Commander_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing25;};
if("Skin_GUE_Soldier_2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing26;};
if("Skin_GUE_Soldier_CO_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing + Clothing27;};
/// normal


if("Skin_Rocker2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Rocker2_DZ"];
};
if("Skin_SurvivorW2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorW2_DZ"];
};
if("Skin_Functionary1_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Functionary1_EP1_DZ"];
};
if("Skin_Haris_Press_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Haris_Press_EP1_DZ"];
};
if("Skin_Priest_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Priest_DZ"];
};
if("Skin_SurvivorWpink_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorWpink_DZ"];
};
if("Skin_SurvivorWurban_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorWurban_DZ"];
};
if("Skin_SurvivorWcombat_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorWcombat_DZ"];
};
if("Skin_SurvivorWdesert_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorWdesert_DZ"];
};
if("Skin_Survivor2_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Survivor2_DZ"];
};
if("Skin_Rocker1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Rocker1_DZ"];
};
if("Skin_Rocker3_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Rocker3_DZ"];
};
if("Skin_RU_Policeman_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["RU_Policeman_DZ"];
};
if("Skin_Pilot_EP1_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Pilot_EP1_DZ"];
};
if("Skin_Rocker4_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["Rocker4_DZ"];
};
if("Skin_SurvivorW3_DZ" in _playerItems)then{
Men_Clothing  = Men_Clothing +  ["SurvivorW3_DZ"];
};
systemChat "Items Loaded";
{
	lbAdd [20014, _x];
} foreach Men_Clothing;