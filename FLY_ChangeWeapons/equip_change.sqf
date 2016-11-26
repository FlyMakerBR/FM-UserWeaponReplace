// Replace Weapons Script

if (isServer) then {

_userVar = execVM "\FLY_ChangeWeapons\fn_readConfig.sqf";

waitUntil { scriptDone _userVar };

private ["_replacefor_Katiba", "_replacefor_KatibaGL", "_replacefor_KatibaC", "_replacefor_Zafir", "_replacefor_Rahim", "_replacefor_LynxCamo", "_replacefor_Sting", "_replacefor_MX", "_replacefor_MXGL", "_replacefor_MXC", "_replacefor_MXSW", "_replacefor_MXM", "_replacefor_M320", "_replacefor_Vermin", "_replacefor_SPMG", "_replacefor_MKI", "_replacefor_MAR10", "_replacefor_MK20", "_replacefor_MK20GL", "_replacefor_MK20C", "_replacefor_MK200", "_replacefor_MK18", "_replacefor_LynxBlack", "_replacefor_PDW", "_replacefor_TGR21", "_replacefor_TGR21GL", "_replacefor_TGR20", "_replacefor_MK200_FIA", "_replacefor_MK14", "_replacefor_Zubr", "_replacefor_Rook", "_replacefor_Ammo_CSAT", "_replacefor_Ammo_NATO", "_replacefor_Ammo_FIA", "_replaceAmmoIndex", "_function", "_getItems", "_currentWeapon","_subarray", "_magazinesArray", "_faction", "_countArrayIndex", "_index", "_magazineName", "_magazineAmount"];

_faction = getText(configFile >> "CfgVehicles" >> (typeOf _this) >> "faction");

// Weapons Variables:
//{
_replacefor_Katiba = replacefor_Katiba;
_replacefor_KatibaGL = replacefor_KatibaGL;
_replacefor_KatibaC = replacefor_KatibaC;
_replacefor_Zafir = replacefor_Zafir;
_replacefor_Rahim = replacefor_Rahim;
_replacefor_LynxCamo = replacefor_LynxCamo;
_replacefor_Sting = replacefor_Sting;
_replacefor_Navid = replacefor_Navid;
_replacefor_Cyrus = replacefor_Cyrus;
_replacefor_ASP1 = replacefor_ASP1;
_replacefor_MX = replacefor_MX;
_replacefor_MXGL = replacefor_MXGL;
_replacefor_MXC = replacefor_MXC;
_replacefor_MXSW = replacefor_MXSW;
_replacefor_MXM = replacefor_MXM;
_replacefor_M320 = replacefor_M320;
_replacefor_Vermin = replacefor_Vermin;
_replacefor_SPMG = replacefor_SPMG;
_replacefor_MKI = replacefor_MKI;
_replacefor_MAR10 = replacefor_MAR10;
_replacefor_MK20 = replacefor_MK20;
_replacefor_MK20GL = replacefor_MK20GL;
_replacefor_MK20C = replacefor_MK20C;
_replacefor_MK200 = replacefor_MK200;
_replacefor_MK18 = replacefor_MK18;
_replacefor_LynxBlack = replacefor_LynxBlack;
_replacefor_PDW = replacefor_PDW;
_replacefor_TGR21 = replacefor_TGR21;
_replacefor_TGR21GL = replacefor_TGR21GL;
_replacefor_TGR20 = replacefor_TGR20;
_replacefor_MK200_FIA = replacefor_MK200_FIA;
_replacefor_MK14 = replacefor_MK14;
//}
//

// Ammo Variables:
//{
_replacefor_Ammo_CSAT = replacefor_Ammo_CSAT;
_replacefor_Ammo_NATO = replacefor_Ammo_NATO;
_replacefor_Ammo_AAF = replacefor_Ammo_AAF;
_replacefor_Ammo_FIA = replacefor_Ammo_FIA;
//}

/*		DO NOT EDIT BELLOW THIS LINE IF YOU DONT KNOW WHARE YOU DOING		*/
If (_faction == "OPF_F") then {
_replaceAmmoIndex = [
//Start CSAT
//"30Rnd_65x39_caseless_green", // 0 Magazine Katiba
//"30Rnd_65x39_caseless_green_mag_Tracer", // 1 Magazine Katiba Tracer
"150Rnd_762x54_Box", // 2 Magazine Zafir
"150Rnd_762x54_Box_Tracer", // 3 Magazine Zafir Tracer
"10Rnd_762x54_Mag", // 4 Magazine Rahim
"5Rnd_127x108_Mag", // 5 Magazine Lynx
"5Rnd_127x108_APDS_Mag", // 6 Magazine Lynx Armor Piercing
"30Rnd_9x21_Mag_SMG_02_Tracer_Green", // 7 Magazine Sting
"150Rnd_93x64_Mag", // 8 Magazine Navid
"10Rnd_93x64_DMR_05_Mag", // 9 Magazine Cyrrus
"10Rnd_127x54_Mag", // 10 Magazine ASP1
"1Rnd_HE_Grenade_shell", // 11 GL CSAT 1
"nul", // 12 GL CSAT 2
"1Rnd_Smoke_Grenade_shell", // 13 GL CSAT Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 14 GL CSAT Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 15 GL CSAT Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 16 GL CSAT Smoke 4
];
};
If (_faction == "BLU_F") then {
_replaceAmmoIndex = [
//Start NATO
//"30Rnd_65x39_caseless_mag", // 0 Magazine MX
//"30Rnd_65x39_caseless_mag_Tracer", // 1 Magazine MX Tracer
"100Rnd_65x39_caseless_mag", // 2 Magazine MXSW
"100Rnd_65x39_caseless_mag_Tracer", // 3 Magazine MXSW Tracer
//"30Rnd_65x39_caseless_mag", // 4 Magazine MXM
"7Rnd_408_Mag", // 5 Magazine M320
"nul", // 6 Magazine M320 Special
"30Rnd_45ACP_Mag_SMG_01", // 7 Magazine Vermin
"130Rnd_338_Mag", // 8 Magazine SPMG
"20Rnd_762x51_Mag", // 9 Magazine MKI
"10Rnd_338_Mag", // 10 Magazine MAR-10
"1Rnd_HE_Grenade_shell", // 11 GL Nato 1
"3Rnd_HE_Grenade_shell", // 12 GL Nato 2
"1Rnd_Smoke_Grenade_shell", // 13 GL Nato Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 14 GL Nato Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 15 GL Nato Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 16 GL Nato Smoke 4
];
};
If (_faction == "IND_F") then {
_replaceAmmoIndex = [
//Start AAF
//"30Rnd_556x45_Stanag", // 0 Magazine MK20
//"30Rnd_556x45_Stanag_Tracer_Yellow", // 1 Magazine MK20 Tracer
"200Rnd_65x39_cased_Box", // 2 Magazine MK200
"200Rnd_65x39_cased_Box_Tracer", // 3 Magazine MK200 Tracer
"20Rnd_762x51_Mag", // 4 Magazine MK18
"5Rnd_127x108_Mag", // 5 Magazine Lynx
"5Rnd_127x108_APDS_Mag", // 6 Magazine Lynx Armor Piercing
"30Rnd_9x21_Yellow_Mag", // 7 Magazine PDW
"1Rnd_HE_Grenade_shell", // 8 GL AAF 1
"null", // 9 GL AAF 2
"1Rnd_Smoke_Grenade_shell", // 10 GL AAF Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 11 GL AAF Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 12 GL AAF Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 13 GL AAF Smoke 4
];
};
If (_faction == "BLU_G_F") then {
_replaceAmmoIndex = [
//Start FIA
//"30Rnd_556x45_Stanag", // 0 Magazine TGR
//"30Rnd_556x45_Stanag_Tracer_Yellow", // 1 Magazine TGR Tracer
"200Rnd_65x39_cased_Box", // 2 Magazine MK200
"200Rnd_65x39_cased_Box_Tracer", // 3 Magazine MK200 Tracer
"20Rnd_762x51_Mag", // 4 Magazine MK14
"1Rnd_HE_Grenade_shell", // 5 GL FIA 1
"null", // 6 GL FIA 2
"1Rnd_Smoke_Grenade_shell", // 7 GL FIA Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 8 GL FIA Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 9 GL FIA Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 10 GL FIA Smoke 4
];
};
If (_faction == "OPF_G_F") then {
_replaceAmmoIndex = [
//Start FIA
//"30Rnd_556x45_Stanag", // 0 Magazine TGR
//"30Rnd_556x45_Stanag_Tracer_Yellow", // 1 Magazine TGR Tracer
"200Rnd_65x39_cased_Box", // 2 Magazine MK200
"200Rnd_65x39_cased_Box_Tracer", // 3 Magazine MK200 Tracer
"20Rnd_762x51_Mag", // 4 Magazine MK14
"1Rnd_HE_Grenade_shell", // 5 GL FIA 1
"null", // 6 GL FIA 2
"1Rnd_Smoke_Grenade_shell", // 7 GL FIA Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 8 GL FIA Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 9 GL FIA Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 10 GL FIA Smoke 4
];
};
If (_faction == "IND_G_F") then {
_replaceAmmoIndex = [
//Start FIA
//"30Rnd_556x45_Stanag", // 0 Magazine TGR
//"30Rnd_556x45_Stanag_Tracer_Yellow", // 1 Magazine TGR Tracer
"200Rnd_65x39_cased_Box", // 2 Magazine MK200
"200Rnd_65x39_cased_Box_Tracer", // 3 Magazine MK200 Tracer
"20Rnd_762x51_Mag", // 4 Magazine MK14
"1Rnd_HE_Grenade_shell", // 5 GL FIA 1
"null", // 6 GL FIA 2
"1Rnd_Smoke_Grenade_shell", // 7 GL FIA Smoke 1
"1Rnd_SmokeRed_Grenade_shell", // 8 GL FIA Smoke 2
"1Rnd_SmokeGreen_Grenade_shell", // 9 GL FIA Smoke 3
"1Rnd_SmokeYellow_Grenade_shell" // 10 GL FIA Smoke 4
];
};

_function = execVM "\FLY_ChangeWeapons\Zen_ArrayGetNestedIndex.sqf";

waitUntil { scriptDone _function };

// Get Unit Current Weapon and remove
_getItems = primaryWeaponItems _this;
_currentWeapon = [primaryWeapon _this] call BIS_fnc_baseWeapon;

_magazinesArray = magazines _this;
_magazinesArray = _magazinesArray call BIS_fnc_consolidateArray;

_this removeWeapon _currentWeapon;

{_this removeMagazines _x;} forEach _replaceAmmoIndex;
{_this removeMagazines _x;} forEach primaryWeaponMagazine _this;


//Replace factions

//CSAT Faction

If (_faction == "OPF_F") then {

	If ( _currentWeapon == "arifle_Katiba_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};
	
	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_Katiba;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Katiba_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 3, _magazineAmount];
		
	_this addweapon _replacefor_KatibaGL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_Katiba_C_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_CSAT_More select 5, _magazineAmount];
		
	_this addweapon _replacefor_KatibaC;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "LMG_Zafir_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_Zafir;	
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_01_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_Rahim;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_GM6_camo_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_LynxCamo;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};	

	If ( _currentWeapon == "SMG_02_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_Sting;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "MMG_01_hex_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_Navid;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_05_blk_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_Cyrus;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_04_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_CSAT select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_ASP1;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

//NATO Faction

If (_faction == "BLU_F") then {

	If ( _currentWeapon == "arifle_MX_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;

	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];
	};
	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_MX;

	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_MX_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;

	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];
	};
	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 3, _magazineAmount];
	
	_this addweapon _replacefor_MXGL;
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_MXC_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;

	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];
	};
	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 5, _magazineAmount];
	
	_this addweapon _replacefor_MXC;
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_MX_SW_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _Index) select 0;
	_magazineAmount = (_magazinesArray select _Index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex, _magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MXSW;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_MXM_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;

	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];
	};
	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_NATO_More select 6, _magazineAmount];
	
	_this addweapon _replacefor_MXM;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_LRR_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_M320;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, _magazineAmount];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};	

	If ( _currentWeapon == "SMG_01_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_Vermin;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, _magazineAmount];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "MMG_02_sand_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_SPMG;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, _magazineAmount];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_03_tan_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_MKI;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, _magazineAmount];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_02_sniper_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_NATO select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_MAR10;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, _magazineAmount];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

//AAF FACTION

If (_faction == "IND_F") then {
	

	If ( _currentWeapon == "arifle_Mk20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_MK20;
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 3, _magazineAmount];
	
	_this addweapon _replacefor_MK20GL;	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_Mk20C_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
		
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_AAF_More select 5, _magazineAmount];
		
	_this addweapon _replacefor_MK20C;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "LMG_Mk200_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK200;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_EBR_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK18;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_GM6_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_LynxBlack;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};	

	If ( _currentWeapon == "hgun_PDW2000_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_AAF select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	

	_this addweapon _replacefor_PDW;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

//FIA FACTION

If (_faction == "BLU_G_F") then {

	If ( _currentWeapon == "arifle_TRG21_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
		
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
		
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_TRG21_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
		
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
	
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_TRG20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
	
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20C_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
		
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "LMG_Mk200_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK200_FIA;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_06_camo_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK14;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

If (_faction == "OPF_G_F") then {

	If ( _currentWeapon == "arifle_TRG21_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
		
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
		
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_TRG21_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
		
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
	
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_TRG20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
	
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20C_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
		
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "LMG_Mk200_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK200_FIA;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_06_camo_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK14;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

If (_faction == "IND_G_F") then {

	If ( _currentWeapon == "arifle_TRG21_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
	
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
		
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 0, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 1, _magazineAmount];
		
	_this addweapon _replacefor_TGR21;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_TRG21_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
		
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20_GL_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 2, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 3, _magazineAmount];
	
	_this addweapon _replacefor_TGR21GL;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

	If ( _currentWeapon == "arifle_TRG20_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
	
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "arifle_Mk20C_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_magazineAmount = (_magazinesArray select 0) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 4, _magazineAmount];
	_magazineAmount = (_magazinesArray select 1) select 1;
	_this addMagazines [replacefor_Ammo_FIA_More select 5, _magazineAmount];
		
	_this addweapon _replacefor_TGR20;
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "LMG_Mk200_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK200_FIA;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};
	
	If ( _currentWeapon == "srifle_DMR_06_camo_F" ) then {
	
	// CODE SEARCH MAGAZINE //
	_countArrayIndex = 0;
	{
	
	_index = [_magazinesArray, _x, 0] call Zen_ArrayGetNestedIndex;
	
	// FOUNDED - ADD AMMO  //
	if (_index >= 0) then {
	_magazineName = (_magazinesArray select _index) select 0;
	_magazineAmount = (_magazinesArray select _index) select 1;
	_this addMagazines [_replacefor_Ammo_FIA select _countArrayIndex ,_magazineAmount];	
	};

	_countArrayIndex = _countArrayIndex + 1;
	
	} forEach _replaceAmmoIndex;	
	
	_this addweapon _replacefor_MK14;
	_magazineName = primaryWeaponMagazine _this select 0;
	_this addMagazines [_magazineName, 1];
	{_this addPrimaryWeaponItem _x} forEach _getItems;
	_this selectWeapon ( primaryWeapon _this );
	};

};

};