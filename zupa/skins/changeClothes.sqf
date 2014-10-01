_sel =  _this select 0;
_unittype = Men_Clothing select _sel;		
if (!isNull (unitBackpack player)) then {
	cutText ["You cannot change your Skin while wearing a backpack", "PLAIN"];
}else{											
	DZE_ActionInProgress = true;
	if (vehicle player != player) exitWith { DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_85"), "PLAIN DOWN"]};
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
	};	};	};	};	};};	};	};	};	};};	};	};	};};	};	};	};	};	};	};	};	};	};	};	};	};
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
	};	};	};	};	};	};	};	};};	};	};	};};};	};	};	};};	};	};	};	};	};	};	};	};	};
	_item = Format ["Skin_%1", _myRealModel];
	systemChat _item;
	_itemToDel = "Skin_" +  _itemDel;
	systemChat _itemToDel;
	if([_itemToDel] call player_checkAndRemoveItems) then {				
			cutText ["\n\nYou are changing to " + _unittype, "PLAIN DOWN"];				
			CloseDialog 0;
			CloseDialog 1;
			(findDisplay 106) closeDisplay 1;
			[dayz_playerUID,dayz_characterID,_unittype] spawn player_humanityMorph;		
			player addMagazine _item;			
	};
	DZE_ActionInProgress = false;
};