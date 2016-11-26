#include "BIS_AddonInfo.hpp"
////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 4.97
//Wed Sep 28 17:31:29 2016 : Source 'file' date Wed Sep 28 17:31:29 2016
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class FLY_ChangeWeapons : config.bin{
class CfgPatches
{
	class FLY_ChangeWeapons
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1;
		requiredAddons[] = {"Extended_EventHandlers"};
	};
};
class Extended_PostInit_EventHandlers
{
	class FLY_ChangeWeapons_Post_Init
	{
		init = "_handle = {_x execVM ""\FLY_ChangeWeapons\equip_change.sqf""} forEach allUnits;";
	};
};
class cfgMods
{
	author = "76561197996719499";
	timepacked = "1471030056";
};
//};
