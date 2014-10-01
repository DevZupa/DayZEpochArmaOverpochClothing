/* Zupa */
player removeAction s_clothes;
s_clothes = -1;

_body = _this select 3;
_model = typeOf _body;

if( _model in Clothing1)then{_model = "FR_OHara_DZ"; //OK
}else{
if( _model in Clothing2)then{_model = "Soldier1_DZ";//OK
}else{
if( _model in Clothing3)then{_model = "Ins_Soldier_GL_DZ";//OK
}else{
if( _model in Clothing4)then{_model = "GUE_Soldier_Crew_DZ";//OK
}else{
if( _model in Clothing5)then{_model = "Graves_Light_DZ";//OK
}else{
if( _model in Clothing6)then{_model = "CZ_Special_Forces_GL_DES_EP1_DZ";//OK
}else{
if( _model in Clothing7)then{_model = "Bandit2_DZ";//OK
}else{
if( _model in Clothing8)then{_model = "Soldier_Bodyguard_AA12_PMC_DZ";//OK
}else{
if( _model in Clothing9)then{_model = "TK_INS_Soldier_EP1_DZ";//OK
}else{
if( _model in Clothing10)then{_model = "Survivor2_DZ";//OK
}else{
if( _model in Clothing11)then{_model = "FR_Rodriguez_DZ";//OK - Edit this one for normal arma. The rest coming is overwatch.
}else{////2
if( _model in Clothing12)then{_model = "Drake_Light_DZ";//OK
}else{////3
if( _model in Clothing13)then{_model = "Soldier_Sniper_PMC_DZ";//OK
}else{////4
if( _model in Clothing14)then{_model = "CZ_Soldier_Sniper_EP1_DZ";//OK
}else{////5
if( _model in Clothing15)then{_model = "Camo1_DZ";//OK
}else{////6
if( _model in Clothing16)then{_model = "Rocket_DZ";//OK
}else{////7
if( _model in Clothing17)then{_model = "Sniper1_DZ";//OK
}else{////8
if( _model in Clothing18)then{_model = "Soldier_TL_PMC_DZ";//OK
}else{////9
if( _model in Clothing19)then{_model = "GUE_Soldier_Sniper_DZ";//OK
}else{////10
if( _model in Clothing20)then{_model = "TK_INS_Warlord_EP1_DZ";//OK
}else{////11
if( _model in Clothing21)then{_model = "Bandit1_DZ";
}else{////12
if( _model in Clothing22)then{_model = "Bandit2_DZ";
}else{////13
if( _model in Clothing23)then{_model = "BanditW1_DZ";
}else{////14
if( _model in Clothing24)then{_model = "BanditW2_DZ";
}else{////15
if( _model in Clothing25)then{_model = "GUE_Commander_DZ";
}else{////16
if( _model in Clothing26)then{_model = "GUE_Soldier_2_DZ";
}else{////17
if( _model in Clothing27)then{_model = "GUE_Soldier_CO_DZ";
}else{////18
_model = _model;
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

_count = (({isPlayer _x} count (nearestObjects [player, ["CAManBase"], 5])) - 1);

switch (_model) do {
	case "Survivor3_DZ": {
		_model = "Survivor2_DZ";
	};
};

_isModel = _model in  AllPlayers;

if (_count > 0) exitWith {
	_txt = "You can't take clothes from a body when a player is within 5m of you!";
	cutText [_txt,"PLAIN DOWN"];
	systemChat ("Zupa: "+str _txt+"");
};
if !(_isModel) then {
	_txt = "These clothes can not be taken!";
	cutText [txt,"PLAIN DOWN"];
	systemChat ("Zupa: "+str _txt+"");
};
if (_model in ["Survivor2_DZ"]) then {
	_txt = "These clothes can not be taken!";
	cutText [txt,"PLAIN DOWN"];
	systemChat ("Zupa: "+str _txt+"");
};



if (_isModel &&  !(_model in ["Survivor2_DZ"])) then {
	_model = "Skin_" + _model;
	_result = [player,_model] call BIS_fnc_invAdd;
	if (_result) then {
		player playActionNow "PutDown";
		private["_name","_method"];
		_name = _body getVariable["bodyName","unknown"];
		_method = _body getVariable["deathType","unknown"];
		_money = _body getVariable["cashMoney",0];
		_class = "Survivor2_DZ";
		_position = getPosATL _body;
		_dir = getDir _body;
		//---------_currentAnim = animationState _body;
		private ["_weapons","_magazines","_primweapon","_secweapon"];
		_weapons = weapons _body;
		_primweapon = primaryWeapon _body;
		_secweapon = secondaryWeapon _body;
		if (!(_primweapon in _weapons) && _primweapon != "") then {_weapons = _weapons + [_primweapon];};
		if (!(_secweapon in _weapons) && _secweapon != "") then {_weapons = _weapons + [_secweapon];};
		_magazines = magazines _body;
		private ["_newBackpackType","_backpackWpn","_backpackMag"];
		dayz_myBackpack = unitBackpack _body;
		if (isNull (unitBackpack _body)) then {
			_hasBackPack = false;
		} else {
			_hasBackPack = true;
			_newBackpackType = typeOf dayz_myBackpack;
			_backpackWpn = getWeaponCargo dayz_myBackpack;
			_backpackMag = getMagazineCargo dayz_myBackpack;
		};
		_currentWpn = currentWeapon _body;
		_muzzles = getArray(configFile >> "cfgWeapons" >> _currentWpn >> "muzzles");
		if (count _muzzles > 1) then {_currentWpn = currentMuzzle _body;};
		_body setPosATL dayz_spawnPos;
		_oldUnit = _body;
		_group = createGroup west;
		_newUnit = _group createUnit [_class,position player,[],0,"NONE"];
		_newUnit setPosATL _position;
		_newUnit setDir _dir;
		{_newUnit removeMagazine _x;} forEach magazines _newUnit;
		removeAllWeapons _newUnit;
		{if (typeName _x == "ARRAY") then {_newUnit addMagazine [_x select 0,_x select 1];} else {_newUnit addMagazine _x;};} forEach _magazines;
		{_newUnit addWeapon _x;} forEach _weapons;
		if (str(_weapons) != str(weapons _newUnit)) then {
			{_weapons = _weapons - [_x];} forEach (weapons _newUnit);
			{_newUnit addWeapon _x;} forEach _weapons;
		};
		if (_primweapon != (primaryWeapon _newUnit)) then { _newUnit addWeapon _primweapon; };
		if (_secweapon != (secondaryWeapon _newUnit) && _secweapon != "") then { _newUnit addWeapon _secweapon; };
		if (_hasBackPack) then {
			_newUnit addBackpack _newBackpackType;
			_oldBackpack = dayz_myBackpack;
			dayz_myBackpack = unitBackpack _newUnit;
			_backpackWpnTypes = [];
			_backpackWpnQtys = [];
			if (count _backpackWpn > 0) then {
				_backpackWpnTypes = _backpackWpn select 0;
				_backpackWpnQtys = _backpackWpn select 1;
			};
			_countr = 0;
			{
				dayz_myBackpack addWeaponCargoGlobal [_x,(_backpackWpnQtys select _countr)];
				_countr = _countr + 1;
			} forEach _backpackWpnTypes;
			_backpackmagTypes = [];
			_backpackmagQtys = [];
			if (count _backpackmag > 0) then {
				_backpackmagTypes 	= _backpackMag select 0;
				_backpackmagQtys 	= _backpackMag select 1;
			};
			_countr = 0;
			{
				dayz_myBackpack addmagazineCargoGlobal [_x,(_backpackmagQtys select _countr)];
				_countr = _countr + 1;
			} forEach _backpackmagTypes;
		};
		removeAllWeapons _oldUnit;
		{
			_oldUnit removeMagazine _x;
		} forEach magazines _oldUnit;
		deleteVehicle _oldUnit;
		_oldUnit = nil;
		_newUnit setDamage 1;
		_newUnit setVariable["bodyName",_name,true];
		_newUnit setVariable["deathType",_method,true];
		_newUnit setVariable["cashMoney",_money,true];
	} else {cutText ["You need a free slot to take clothing.", "PLAIN DOWN"];};
};