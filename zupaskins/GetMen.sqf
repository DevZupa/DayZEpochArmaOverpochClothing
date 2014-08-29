// by Boyd
if(not local player) exitWith{};
#include "config.sqf"
#include "definitions.sqf"
disableSerialization;

_display = findDisplay SKINS_DIALOG;
_listbox = _display displayCtrl SKINS_UNITLIST;
_sel = lbCurSel _listbox; if(_sel < 0) exitWith{};

_unittype = Men_Clothing select _sel;
_typename = lbtext [SKINS_UNITLIST,_sel];

_hasGPS = false;
_hasCompass = false;
_hasRadio = false;
_hasWatch = false;
_hasMap = false;

/********************* Buy Skin ********************/
if (str _unittype == str _unittype)then{
		if (Global_Price call player_checkItems) then {
			_removed = Global_Price call player_removeItems;
		
			if (!isNull (unitBackpack player)) then {
	
			cutText ["You cannot change your Skin while wearing a backpack", "PLAIN"];
				}else{
					if (player hasWeapon "ItemCompass") then {
						_hasCompass = true;
					};

					if (player hasWeapon "ItemRadio") then {
						_hasRadio = true;
					};

						if (player hasWeapon "ItemGPS") then {
							_hasGPS = true;
						};

						if (player hasWeapon "ItemWatch") then {
							_hasWatch = true;
						};

						if (player hasWeapon "ItemMap") then {
							_hasMap = true;
							
						};
						
								
/****/										
						
zupa_cid =player getVariable ["CharacterID","0"];
_bubank = player getVariable ["bank", 0];
_money = player getVariable ["headShots", 0];

DZE_ActionInProgress = true;

//_item = _this;

//_hasclothesitem = _this in magazines player;

_config = configFile >> "CfgMagazines";


if (!_hasclothesitem) exitWith { DZE_ActionInProgress = false; cutText [format[(localize "str_player_31"),_text,"wear"] , "PLAIN DOWN"]};

if (vehicle player != player) exitWith { DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_85"), "PLAIN DOWN"]};

//if (!isNull (unitBackpack player)) exitWith { DZE_ActionInProgress = false; cutText [(localize "STR_EPOCH_ACTIONS_9"), "PLAIN DOWN"] };

if ("CSGAS" in (magazines player)) exitWith { DZE_ActionInProgress = false; cutText [(localize "STR_EPOCH_ACTIONS_10"), "PLAIN DOWN"] };

_myModel = (typeOf player);

_myRealModel = "Survivor2_DZ";

if( _myModel in Clothing1)then{_myRealModel = "FR_OHara_DZ"; //OK
}else{
if( _myModel in Clothing2)then{_myRealModel = "Soldier1_DZ";//OK
}else{
if( _myModel in Clothing3)then{_myRealModel = "Ins_Soldier_GL_DZ";//OK
}else{
if( _myModel in Clothing4)then{_myRealModel = "GUE_Soldier_Crew_DZ";//OK
}else{
if( _myModel in Clothing5)then{_myRealModel = "Graves_Light_DZ";//OK
}else{
if( _myModel in Clothing6)then{_myRealModel = "CZ_Special_Forces_GL_DES_EP1_DZ";//OK
}else{
if( _myModel in Clothing7)then{_myRealModel = "Bandit2_DZ";//OK
}else{
if( _myModel in Clothing8)then{_myRealModel = "Soldier_Bodyguard_AA12_PMC_DZ";//OK
}else{
if( _myModel in Clothing9)then{_myRealModel = "TK_INS_Soldier_EP1_DZ";//OK
}else{
if( _myModel in Clothing10)then{_myRealModel = "Survivor2_DZ";//OK
}else{
if( _myModel in Clothing11)then{_myRealModel = "FR_Rodriguez_DZ";//OK - Edit this one for normal arma. The rest coming is overwatch.
}else{////2
if( _myModel in Clothing12)then{_myRealModel = "Drake_Light_DZ";//OK
}else{////3
if( _myModel in Clothing13)then{_myRealModel = "Soldier_Sniper_PMC_DZ";//OK
}else{////4
if( _myModel in Clothing14)then{_myRealModel = "CZ_Soldier_Sniper_EP1_DZ";//OK
}else{////5
if( _myModel in Clothing15)then{_myRealModel = "Camo1_DZ";//OK
}else{////6
if( _myModel in Clothing16)then{_myRealModel = "Rocket_DZ";//OK
}else{////7
if( _myModel in Clothing17)then{_myRealModel = "Sniper1_DZ";//OK
}else{////8
if( _myModel in Clothing18)then{_myRealModel = "Soldier_TL_PMC_DZ";//OK
}else{////9
if( _myModel in Clothing19)then{_myRealModel = "GUE_Soldier_Sniper_DZ";//OK
}else{////10
if( _myModel in Clothing20)then{_myRealModel = "TK_INS_Warlord_EP1_DZ";//OK
}else{////11
if( _myModel in Clothing21)then{_myRealModel = "Bandit1_DZ";
}else{////12
if( _myModel in Clothing22)then{_myRealModel = "Bandit2_DZ";
}else{////13
if( _myModel in Clothing23)then{_myRealModel = "BanditW1_DZ";
}else{////14
if( _myModel in Clothing24)then{_myRealModel = "BanditW2_DZ";
}else{////15
if( _myModel in Clothing25)then{_myRealModel = "GUE_Commander_DZ";
}else{////16
if( _myModel in Clothing26)then{_myRealModel = "GUE_Soldier_2_DZ";
}else{////17
if( _myModel in Clothing27)then{_myRealModel = "GUE_Soldier_CO_DZ";
}else{////18
_myRealModel = _myModel;
};////18
};////17
};////16
};////15
};////14
};////13
};////12
};////11
};////10
};////9
};////8
};////7
};////6
};////5
};////4
};////3
};////2
};
};
};
};
};
};
};
};
};
};

_itemDel = "";

if( _unittype in Clothing1)then{_itemDel = "FR_OHara_DZ";
}else{
if( _unittype in Clothing2)then{_itemDel = "Soldier1_DZ";
}else{
if( _unittype in Clothing3)then{_itemDel = "Ins_Soldier_GL_DZ";
}else{
if( _unittype in Clothing4)then{_itemDel = "GUE_Soldier_Crew_DZ";
}else{
if( _unittype in Clothing5)then{_itemDel = "Graves_Light_DZ";
}else{
if( _unittype in Clothing6)then{_itemDel = "CZ_Special_Forces_GL_DES_EP1_DZ";
}else{
if( _unittype in Clothing7)then{_itemDel = "Bandit2_DZ";
}else{
if( _unittype in Clothing8)then{_itemDel = "Soldier_Bodyguard_AA12_PMC_DZ";
}else{
if( _unittype in Clothing9)then{_itemDel = "TK_INS_Soldier_EP1_DZ";
}else{
if( _unittype in Clothing10)then{_itemDel = "Survivor2_DZ";
}else{
if( _unittype in Clothing11)then{_itemDel = "FR_Rodriguez_DZ";
}else{////2
if( _unittype in Clothing12)then{_itemDel = "Drake_Light_DZ";
}else{////3
if( _unittype in Clothing13)then{_itemDel = "Soldier_Sniper_PMC_DZ";
}else{////4
if( _unittype in Clothing14)then{_itemDel = "CZ_Soldier_Sniper_EP1_DZ";
}else{////5
if( _unittype in Clothing15)then{_itemDel = "Camo1_DZ";
}else{////6
if( _unittype in Clothing16)then{_itemDel = "Rocket_DZ";
}else{////7
if( _unittype in Clothing17)then{_itemDel = "Sniper1_DZ";
}else{////8
if( _unittype in Clothing18)then{_itemDel = "Soldier_TL_PMC_DZ";
}else{////9
if( _unittype in Clothing19)then{_itemDel = "GUE_Soldier_Sniper_DZ";
}else{////10
if( _unittype in Clothing20)then{_itemDel = "TK_INS_Warlord_EP1_DZ";
}else{////11
if( _unittype in Clothing21)then{_itemDel = "Bandit1_DZ";
}else{////12
if( _unittype in Clothing22)then{_itemDel = "Bandit2_DZ";
}else{////13
if( _unittype in Clothing23)then{_itemDel = "BanditW1_DZ";
}else{////14
if( _unittype in Clothing24)then{_itemDel = "BanditW2_DZ";
}else{////15
if( _unittype in Clothing25)then{_itemDel = "GUE_Commander_DZ";
}else{////16
if( _unittype in Clothing26)then{_itemDel = "GUE_Soldier_2_DZ";
}else{////17
if( _unittype in Clothing27)then{_itemDel = "GUE_Soldier_CO_DZ";
}else{////18
_itemDel = _unittype;
};////18
};////17
};////16
};////15
};////14
};////13
};////12
};////11
};////10
};////9
};////8
};////7
};////6
};////5
};////4
};////3
};////2
};
};
};
};
};
};
};
};
};
};

//


_item = Format ["Skin_%1", _myRealModel];

systemChat _item;

_itemToDel = "Skin_" +  _itemDel;

systemChat "-";

systemChat _itemToDel;
/***/

//diag_log ("Debug Clothes: model In: " + str(_itemNew) + " Out: " + str(_item));

				if(([player,_itemToDel] call BIS_fnc_invRemove) == 1) then {
				
				
						cutText ["\n\nYou are changing to " + _unittype, "PLAIN DOWN"];
				
					/**old**/
						CloseDialog 0;
						CloseDialog 1;
						(findDisplay 106) closeDisplay 1;
						player playActionNow "Medic";
						
						sleep 7;
											
						sleep 1;
						[dayz_playerUID,dayz_characterID,_unittype] spawn player_humanityMorph;
						player setVariable["bank",_bubank,true];
						player setVariable["CharacterID",zupa_cid,true];
						player setVariable ["headShots", _money,true];
						sleep 0.2;
						player setVariable["bank",_bubank,true];
						player setVariable["CharacterID",zupa_cid,true];
						player setVariable ["headShots", _money,true];
						vehicle player switchCamera 'EXTERNAL';
						sleep 3;
						player addMagazine _item;
						player setVariable["bank",_bubank,true];
						player setVariable["CharacterID",zupa_cid,true];
						player setVariable ["headShots", _money,true];
										
					/**old**/
				};
			player setVariable["bank",_bubank,true];
			player setVariable["CharacterID",zupa_cid,true];
			player setVariable ["headShots", _money,true];

DZE_ActionInProgress = false;
player setVariable["bank",_bubank,true];
player setVariable["CharacterID",zupa_cid,true];
player setVariable ["headShots", _money,true];
sleep 2;
player setVariable["CharacterID",zupa_cid,true];
player setVariable ["headShots", _money,true];
player setVariable["bank",_bubank,true];
sleep 2;
player setVariable["CharacterID",zupa_cid,true];
player setVariable ["headShots", _money,true];
player setVariable["bank",_bubank,true];
										
						/****/
						
			   removeBackpack  player;
									
				if (!_hasCompass) then {
					player removeWeapon "ItemCompass";
				};

				if (!_hasRadio) then {
					player removeWeapon "ItemRadio";
				};
				
				if (!_hasGPS) then {
					player removeWeapon "ItemGPS";
				};	

				if (!_hasWatch) then {
					player removeWeapon "ItemWatch";
				};

				if (!_hasMap) then {
					player removeWeapon "ItemMap";
				};
			};
			}else{
			systemchat format ["Not enough gold Need" + " %2 %1.",(Global_Price select 0)select 0,(Global_Price select 0)select 1];
			};
};
/*******************************************************/