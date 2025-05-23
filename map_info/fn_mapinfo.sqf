
/*


["INIT", [_startDate]] 		call cvo_map_date_fnc_dateMarker;
["INIT", [btc_startDate]] 	call cvo_map_date_fnc_dateMarker;


*/

if (!isServer) exitWith {};

params [
	["_mode", "INIT", [""]],
	["_params", [btc_startDate],[]]
];

switch (_mode) do {
	case "preInit";
	case "INIT": {
		diag_log format["[CVO] [Map] (dateMarker) - Init Params: %1", _this];
		
		for "_i" from 1 to 7 do {
			private _markerName = ["cvo_dateMarker",_i] joinString "_";
			createMarkerLocal [ _markerName, [ (worldSize * 1.05), ( worldSize - ( 150 * (_i -1 ) ) ) ] ];
			_markerName setMarkerTypeLocal   "EmptyIcon";
			_markerName setMarkerSizeLocal   [1,1];
			_markerName setMarkerColorLocal  "ColorWEST";
			_markerName setMarkerShapeLocal  "ICON";
			_markerName setMarkerShadowLocal true;
			_markerName setMarkerTextLocal   "placeholder";

		};
		
		diag_log format["[CVO] [Map] (dateMarker) - %1", "marker placed."];

		cvo_dateMarker_isActive = true;

		[{
			params ["_args", "_handle"];
			if !(missionNamespace getVariable ["cvo_dateMarker_isActive", false]) exitWith { [_handle] call CBA_fnc_removePerFrameHandler; };

			_args params [["_startDate", missionStart]];

			private _pastDays = floor ([_startDate, date, "d"] call BIS_fnc_calculateDateTime);
            private _daytime = [daytime, "HH:MM"] call BIS_fnc_timeToString;
            
            date call BIS_fnc_sunriseSunsetTime params ["_sunriseTime", "_sunsetTime"];
            _sunriseTime = [_sunriseTime, "HH:MM"] call BIS_fnc_timeToString;
            _sunsetTime = [_sunsetTime, "HH:MM"] call BIS_fnc_timeToString;
			
			"cvo_dateMarker_1" setMarkerText format ["Date: %1-%2-%3 - %4", date#0, date#1, date#2, _daytime];
			"cvo_dateMarker_2" setMarkerText format ["%1 Days since Campaign Start", _pastDays];
			"cvo_dateMarker_3" setMarkerText format ["Sunrise at %1 - Sunset at %2", _sunriseTime, _sunsetTime];
			"cvo_dateMarker_4" setMarkerText format ["Time Acceleration: 1 RL Hour equals to %1 IG Hours", timeMultiplier];
			"cvo_dateMarker_5" setMarkerText format ["Remaining Tickets: %1",[btc_player_side] call BIS_fnc_respawnTickets];
			"cvo_dateMarker_6" setMarkerText format ["Remaining Support Budget: %1",missionNamespace getVariable ["cvo_budget", 0]];
			"cvo_dateMarker_7" setMarkerText format ["Global Reputation: %1",missionNamespace getVariable ["btc_global_reputation", 0]];


		}, 60, _params] call CBA_fnc_addPerFrameHandler;

	};

	default { diag_log format["[CVO] [Map] (dateMarker) - %1", "No Mode Provided."]; };
};