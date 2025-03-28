
btc_version = [
    1,
    24,
    4
];
diag_log format (["=BTC= HEARTS AND MINDS VERSION %1.%2.%3"] + btc_version);

//Param
//<< Time options >>
btc_p_time = "btc_p_time" call BIS_fnc_getParamValue;
btc_p_acctime = "btc_p_acctime" call BIS_fnc_getParamValue;
btc_db_load = ("btc_p_load" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_auto_db = "btc_p_auto_db" call BIS_fnc_getParamValue isEqualTo 1;
btc_p_db_autoRestartTime = "btc_p_db_autoRestartTime" call BIS_fnc_getParamValue;
btc_p_db_autoRestartHour = [
    "btc_p_db_autoRestartHour1" call BIS_fnc_getParamValue,
    "btc_p_db_autoRestartHour2" call BIS_fnc_getParamValue
];
btc_p_db_autoRestartType = "btc_p_db_autoRestartType" call BIS_fnc_getParamValue;
btc_p_slot_isShare = "btc_p_slot_isShare" call BIS_fnc_getParamValue isEqualTo 1;
btc_p_change_time = ("btc_p_change_time" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_change_weather = ("btc_p_change_weather" call BIS_fnc_getParamValue) isEqualTo 1;

//<< Respawn options >>
btc_p_respawn_location = "btc_p_respawn_location" call BIS_fnc_getParamValue;
btc_p_respawn_fromFOBToBase = ("btc_p_respawn_fromFOBToBase" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_rallypointTimer = "btc_p_rallypointTimer" call BIS_fnc_getParamValue;
btc_p_respawn_arsenal = ("btc_p_respawn_arsenal" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_respawn_ticketsAtStart = "btc_p_respawn_ticketsAtStart" call BIS_fnc_getParamValue;
btc_p_respawn_ticketsLost = 1 - ("btc_p_respawn_ticketsLost" call BIS_fnc_getParamValue);
btc_p_respawn_ticketsShare = ("btc_p_respawn_ticketsShare" call BIS_fnc_getParamValue) isEqualTo 0;
btc_p_respawn_ticketsFromPrisoners = "btc_p_respawn_ticketsFromPrisoners" call BIS_fnc_getParamValue;
btc_p_body_timeBeforeShowMarker = ("btc_p_body_timeBeforeShowMarker" call BIS_fnc_getParamValue) * 60;

//<< Faction options >>
private _p_en = "btc_p_en" call BIS_fnc_getParamValue;
private _p_en_AA = ("btc_p_AA" call BIS_fnc_getParamValue) isEqualTo 1;
private _p_en_tank = ("btc_p_tank" call BIS_fnc_getParamValue) isEqualTo 1;
private _p_civ = "btc_p_civ" call BIS_fnc_getParamValue;
private _p_civ_veh = "btc_p_civ_veh" call BIS_fnc_getParamValue;

//<< IED options >>
btc_p_ied = ("btc_p_ied" call BIS_fnc_getParamValue)/2;
private _p_ied_spot = "btc_p_ied_spot" call BIS_fnc_getParamValue;
btc_p_ied_placement = "btc_p_ied_placement" call BIS_fnc_getParamValue;
btc_p_ied_drone = ("btc_p_ied_drone" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_ied_power = "btc_p_ied_power" call BIS_fnc_getParamValue;

//<< Hideout/Cache options >>
btc_hideout_n = "btc_p_hideout_n" call BIS_fnc_getParamValue;
btc_info_cache_def = "btc_p_cache_info_def" call BIS_fnc_getParamValue;
btc_info_cache_ratio = "btc_p_cache_info_ratio" call BIS_fnc_getParamValue;
btc_info_intel_chance = "btc_p_info_chance" call BIS_fnc_getParamValue;
btc_p_info_houseDensity = "btc_p_info_houseDensity" call BIS_fnc_getParamValue;

//<< Skill options >>
btc_p_set_skill  = ("btc_p_set_skill" call BIS_fnc_getParamValue) isEqualTo 1;
btc_AI_skill = [
    ("btc_p_set_skill_general" call BIS_fnc_getParamValue)/10,//general
    ("btc_p_set_skill_aimingAccuracy" call BIS_fnc_getParamValue)/10,//aimingAccuracy
    ("btc_p_set_skill_aimingShake" call BIS_fnc_getParamValue)/10,//aimingShake
    ("btc_p_set_skill_aimingSpeed" call BIS_fnc_getParamValue)/10,//aimingSpeed
    ("btc_p_set_skill_endurance" call BIS_fnc_getParamValue)/10,//endurance
    ("btc_p_set_skill_spotDistance" call BIS_fnc_getParamValue)/10,//spotDistance
    ("btc_p_set_skill_spotTime" call BIS_fnc_getParamValue)/10,//spotTime
    ("btc_p_set_skill_courage" call BIS_fnc_getParamValue)/10,//courage
    ("btc_p_set_skill_reloadSpeed" call BIS_fnc_getParamValue)/10,//reloadSpeed
    ("btc_p_set_skill_commanding" call BIS_fnc_getParamValue)/10//commanding
];

//<< Spawn options >>
btc_p_density_of_occupiedCity = ("btc_p_density_of_occupiedCity" call BIS_fnc_getParamValue)/100;
btc_p_mil_group_ratio = ("btc_p_mil_group_ratio" call BIS_fnc_getParamValue)/100;
btc_p_mil_wp_houseDensity = ("btc_p_wp_houseDensity" call BIS_fnc_getParamValue)/100;
btc_p_mil_static_group_ratio = ("btc_p_mil_static_group_ratio" call BIS_fnc_getParamValue)/100;
btc_p_civ_group_ratio = ("btc_p_civ_group_ratio" call BIS_fnc_getParamValue)/100;
btc_p_animals_group_ratio = ("btc_p_animals_group_ratio" call BIS_fnc_getParamValue)/100;
btc_p_veh_armed_ho = ("btc_p_veh_armed_ho" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_veh_armed_spawn_more = ("btc_p_veh_armed_spawn_more" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_patrol_max = "btc_p_patrol_max" call BIS_fnc_getParamValue;
btc_p_civ_max_veh = "btc_p_civ_max_veh" call BIS_fnc_getParamValue;

//<< Gameplay options >>
btc_p_sea = ("btc_p_sea" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_chem = ("btc_p_chem" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_spect = ("btc_p_spect" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_side_mission_cycle = "btc_p_side_mission_cycle" call BIS_fnc_getParamValue;

//<< Arsenal options >>
btc_p_arsenal_Type = "btc_p_arsenal_Type" call BIS_fnc_getParamValue;
btc_p_arsenal_Restrict = "btc_p_arsenal_Restrict" call BIS_fnc_getParamValue;
btc_p_garage = ("btc_p_garage" call BIS_fnc_getParamValue) isEqualTo 1;
btc_p_autoloadout = "btc_p_autoloadout" call BIS_fnc_getParamValue;

//<< Other options >>
btc_global_reputation = "btc_p_rep" call BIS_fnc_getParamValue;
btc_p_rep_notify = "btc_p_rep_notify" call BIS_fnc_getParamValue;
btc_city_radiusOffset = ("btc_p_city_radiusOffset" call BIS_fnc_getParamValue) * 100;
btc_p_trigger = if (("btc_p_trigger" call BIS_fnc_getParamValue) isEqualTo 1) then {
    "this && (false in (thisList apply {_x isKindOf 'Plane'})) && (false in (thisList apply {(_x isKindOf 'Helicopter') && (speed _x > 190)}))"
} else {
    "this"
};
private _p_city_free_trigger = "btc_p_city_free_trigger" call BIS_fnc_getParamValue;
btc_p_flag = "btc_p_flag" call BIS_fnc_getParamValue;
btc_p_debug = "btc_p_debug" call BIS_fnc_getParamValue;

switch (btc_p_debug) do {
    case 0 : {
        btc_debug_log = false;
        btc_debug = false;
    };
    case 1 : {
        btc_debug_log = true;
        btc_debug = true;
        btc_debug_graph = false;
        btc_debug_frames = 0;
    };
    case 2 : {
        btc_debug_log = true;
        btc_debug = false;
    };
};

if (!isMultiplayer) then {
    btc_debug_log = true;
    btc_debug = true;
    btc_debug_graph = false;
    btc_debug_frames = 0;
};

private _cfgVehicles = configFile >> "CfgVehicles";
private _allClassVehicles = ("true" configClasses _cfgVehicles) apply {configName _x};
private _allClassSorted = _allClassVehicles select {getNumber (_cfgVehicles >> _x >> "scope") isEqualTo 2};

if (isServer) then {
    btc_final_phase = false;
    btc_delay_time = 0;

    //City
    btc_city_blacklist = [];//NAME FROM CFG
    btc_p_city_free_trigger_condition = if (_p_city_free_trigger isEqualTo 0) then {
        "thisList isEqualTo []"
    } else {
        format ["[thisList, %1] call btc_city_fnc_trigger_free_condition", _p_city_free_trigger]
    };

    //Civ
    btc_civ_veh_active = [];

    //Database
    btc_db_serverCommandPassword = "btc_password"; //Define the same password in server.cfg like this: serverCommandPassword = "btc_password";
    btc_db_warningTimeAutoRestart = 5;

    //Hideout
    btc_hideout_cityID = []; // List of city ID visible in debug mode for custom hideout location
    btc_hideouts = []; publicVariable "btc_hideouts";
    btc_hideouts_radius = 800;
    if (btc_hideout_n isEqualTo 99) then {
        btc_hideout_n = round random 10;
    };
    btc_hideout_safezone = 4000;
    btc_hideout_range = 3500;
    btc_hideout_cap_time = 1800;
    btc_hideout_minRange = btc_hideout_range;

    //IED
    btc_ied_suic_time = 900;
    btc_ied_suic_spawned = - btc_ied_suic_time;
    btc_ied_offset = [0, -0.03, -0.07] select _p_ied_spot;
    btc_ied_list = [];
    btc_ied_range = 10;
    btc_ied_power = ["Bo_GBU12_LGB_MI10", "R_MRAAWS_HE_F"] select btc_p_ied_power;

    //FOB
    btc_fobs = [[], [], []];
    btc_fob_rallypointTimer = 60 * btc_p_rallypointTimer;
    btc_body_deadPlayers  = [];

    //Patrol
    btc_patrol_active = [];
    btc_patrol_area = 2500;

    //Rep
    btc_rep_militia_call_time = 600;
    btc_rep_militia_called = - btc_rep_militia_call_time;
    btc_rep_delayed = [0, []];

    //Chem
    btc_chem_decontaminate = [];
    btc_chem_contaminated = []; publicVariable "btc_chem_contaminated"; //Preserve reference

    //Spect
    btc_spect_emp = []; publicVariable "btc_spect_emp"; //Preserve reference

    //Cache
    btc_cache_type = [
        ["Land_vn_pavn_weapons_cache", 
        "Land_vn_pavn_weapons_stack1", 
        "Land_vn_pavn_weapons_stack2", 
        "Land_vn_pavn_weapons_stack3"],
        ["Land_vn_pavn_can", 
        "Land_vn_pavn_50_can", 
        "Land_vn_pavn_30_can", 
        "Land_vn_pavn_pouch"]
    ];
   /* private _weapons_usefull = "true" configClasses (configFile >> "CfgWeapons") select {
        getNumber (_x >> 'type') isEqualTo 1 &&
        {getArray (_x >> 'magazines') isNotEqualTo []} &&
        {getNumber (_x >> 'scope') isEqualTo 2}
    };
    */
    //      Takes the Array (_weapons_usefull), creates an array of config paths - which are needed - instead of classnames

    private _weapons_usefull = ["vn_weapon_arifle_ak_01", 
        "vn_weapon_launcher_rpg2", 
        "vn_weapon_launcher_rpg7", 
        "vn_weapon_mmg_dp28", 
        "vn_weapon_sgun_izh54", 
        "vn_weapon_sgun_izh54_shorty", 
        "vn_weapon_sgun_izh54_p", 
        "vn_weapon_arifle_k98k", 
        "vn_weapon_arifle_k98k_bayo", 
        "vn_weapon_arifle_k98k_mrk", 
        "vn_weapon_arifle_k98k_mrk_camo", 
        "vn_weapon_hgun_m1895", 
        "vn_weapon_srifle_m1891", 
        "vn_weapon_srifle_m1891_bayo", 
        "vn_weapon_hgun_m712", 
        "vn_weapon_srifle_m9130", 
        "vn_weapon_srifle_m9130_sniper", 
        "vn_weapon_srifle_m9130_bayo", 
        "vn_weapon_smg_mat49_vc", 
        "vn_weapon_smg_mp40", 
        "vn_weapon_mmg_pk", 
        "vn_weapon_hgun_pm", 
        "vn_weapon_smg_pps43", 
        "vn_weapon_smg_pps52", 
        "vn_weapon_smg_ppsh41", 
        "vn_weapon_lmg_rpd", 
        "vn_weapon_srifle_sks", 
        "vn_weapon_srifle_sks_sniper", 
        "vn_weapon_srifle_sks_bayo", 
        "vn_weapon_arifle_svd_sniper", 
        "vn_weapon_hgun_tt33", 
        "vn_weapon_arifle_type56", 
        "vn_weapon_arifle_type56_bayo", 
        "vn_weapon_hgun_type64", 
        "vn_weapon_smg_type64", 
        "vn_weapon_smg_type64_f", 
        "vn_weapon_smg_vz61", 
        "vn_weapon_hgun_vz61_p", 
        "vn_weapon_arifle_vn_vz54", 
        "vn_weapon_arifle_vn_vz54_sniper"];

    // Converts classnames to configPath 
    _weapons_usefull = _weapons_usefull apply { configFile >> "CfgWeapons" >> _X };
    btc_cache_weapons_type = _weapons_usefull apply {(toLower getText (_x >> "model")) select [1]};

    //Hideout classname
    btc_type_campfire = [
        "Land_vn_c_prop_pot_fire_01", 
        "Land_vn_c_prop_pot_01", 
        "Land_vn_fireplace_f", 
        "vn_fireplace_burning_f", 
        "vn_campfire_burning_f", 
        "Land_vn_campfire_f", 
        "vn_steeldrum_trash_02"];
    btc_type_Scrapyard = _allClassSorted select {
        _x isKindOf "Scrapyard_base_F" &&
        {!("scrap" in toLower _x)}
    };
    btc_type_bigbox = ["vn_o_ammobox_full_05", "vn_o_ammobox_full_06", "vn_o_ammobox_wpn_09"];
    btc_type_seat = ["Land_vn_bedrag_01"];
    btc_type_sleepingbag = ["vn_o_item_bedroll_01", "Land_vn_bedrag_01"];
    btc_type_tent = ["vn_o_snipertree_01", "vn_o_snipertree_04", "vn_o_snipertree_02", "vn_o_snipertree_03","Land_TentA_F", "Land_TentA_F", "Land_TentA_F","Land_TentA_F", "Land_TentA_F", "Land_TentA_F", "Land_TentA_F", "Land_TentA_F"];
    btc_type_camonet = [
        
    ];
    btc_type_satelliteAntenna = [
        "vn_o_prop_radio_m252b_01", 
        "vn_o_prop_r311_01", 
        "vn_o_prop_t102e_01", 
        "vn_o_prop_t884_01"];

    //Side
    btc_side_ID = 0;
    btc_side_list = ["supply", "mines", "vehicle", "get_city", "tower", "civtreatment", "checkpoint", "convoy", "rescue", "capture_officer", "hostage", "hack", "kill", "EMP", "removeRubbish"]; // On ground (Side "convoy" and "capture_officer" are not design for map with different islands. Start and end city can be on different islands.)
    if (btc_p_sea) then {btc_side_list append ["civtreatment_boat", "underwater_generator"]}; // On sea
    if (btc_p_chem) then {btc_side_list append ["chemicalLeak", "pandemic"]};
    btc_side_list_use = [];
    btc_type_tower = ["Land_vn_mobileradar_01_radar_f"];
    btc_type_barrel = ["Land_GarbageBarrel_01_F", "Land_BarrelSand_grey_F", "MetalBarrel_burning_F", "Land_BarrelWater_F", "Land_MetalBarrel_F", "Land_MetalBarrel_empty_F"];
    btc_type_canister = ["Land_vn_canisterfuel_red_f"];
    btc_type_pallet = ["Land_vn_us_common_pallet_01", 
        "Land_vn_us_common_pallet_02", 
        "Land_vn_pallets_stack_f", 
        "Land_vn_pallet_f", 
        "Land_vn_pallets_f"];
    btc_type_box = ["Land_vn_pavn_launchers", 
        "Land_vn_rulaunchers", 
        "Land_vn_pavn_ammo", 
        "Land_vn_rubasicammo", 
        "Land_vn_pavn_weapons", 
        "Land_vn_ruordnance", 
        "Land_vn_pavn_weapons_wide"] + (btc_cache_type select 0);
    btc_type_generator = ["vn_o_item_bedroll_01"];
    btc_type_storagebladder = ["Land_vn_b_prop_fueldrum_01"];
    btc_type_mines = ["vn_mine_bike_range", 
        "vn_mine_cartridge_range", 
        "vn_mine_jerrycan_range", 
        "vn_mine_lighter", 
        "vn_mine_tripwire_m49_02", 
        "vn_mine_tripwire_m49_04", 
        "vn_mine_tripwire_mortar", 
        "vn_mine_chicom_no8", 
        "vn_mine_pot_range", 
        "vn_mine_punji_01", 
        "vn_mine_punji_05", 
        "vn_mine_punji_02", 
        "vn_mine_punji_03", 
        "vn_mine_tripwire_f1_02", 
        "vn_mine_tripwire_f1_04", 
        "vn_mine_tripwire_m16_02", 
        "vn_mine_tripwire_m16_04", 
        "vn_mine_gboard", 
        "vn_mine_tripwire_arty"];
    btc_type_power = ["vn_mine_bike_range", 
        "vn_mine_jerrycan_range", 
        "vn_mine_pot_range"];
    btc_type_cord = ["Land_vn_garbage_line_f"];
    btc_type_cones = ["vn_sign_skull_03_f", 
        "vn_sign_skull_01_f"];
    btc_type_fences = ["vn_mine_bike_range", 
        "vn_mine_cartridge_range", 
        "vn_mine_jerrycan_range", 
        "vn_mine_lighter", 
        "vn_mine_tripwire_m49_02", 
        "vn_mine_tripwire_m49_04", 
        "vn_mine_tripwire_mortar", 
        "vn_mine_chicom_no8", 
        "vn_mine_pot_range", 
        "vn_mine_punji_01", 
        "vn_mine_punji_05", 
        "vn_mine_punji_02", 
        "vn_mine_punji_03", 
        "vn_mine_tripwire_f1_02", 
        "vn_mine_tripwire_f1_04", 
        "vn_mine_tripwire_m16_02", 
        "vn_mine_tripwire_m16_04", 
        "vn_mine_gboard", 
        "vn_mine_tripwire_arty",
        "Land_vn_c_bigfallenbranches_pine", 
        "Land_vn_c_bigfallenbranches_pine02", 
        "Land_vn_c_bigfallenbranches_pine03", 
        "Land_vn_c_branchbig", 
        "Land_vn_c_branchesbig_picea", 
        "Land_vn_c_branches_deciduous", 
        "Land_vn_c_branches_picea", 
        "Land_vn_c_rock_stones", 
        "Land_Cliff_stoneCluster_F", 
        "Land_vn_rock_clutter_01_01", 
        "Land_vn_rock_clutter_02_01", 
        "Land_vn_rock_clutter_03_01", 
        "Land_vn_rock_clutter_04_01", 
        "Land_vn_rock_clutter_05_01", 
        "Land_BluntStone_03", 
        "Land_Cliff_stone_small_F",
        "vn_sign_skull_03_f", 
        "vn_sign_skull_01_f"];
    btc_type_barrier = ["Land_vn_c_bigfallenbranches_pine", 
        "Land_vn_c_bigfallenbranches_pine02", 
        "Land_vn_c_bigfallenbranches_pine03", 
        "Land_vn_c_branchbig", 
        "Land_vn_c_branchesbig_picea", 
        "Land_vn_c_branches_deciduous", 
        "Land_vn_c_branches_picea", 
        "Land_vn_c_rock_stones", 
        "Land_Cliff_stoneCluster_F", 
        "Land_vn_rock_clutter_01_01", 
        "Land_vn_rock_clutter_02_01", 
        "Land_vn_rock_clutter_03_01", 
        "Land_vn_rock_clutter_04_01", 
        "Land_vn_rock_clutter_05_01", 
        "Land_BluntStone_03", 
        "Land_Cliff_stone_small_F",
        "vn_sign_skull_03_f", 
        "vn_sign_skull_01_f"];
    btc_type_portable_light = ["Land_vn_us_common_lantern_01"];
    btc_type_portableLamp = ["Land_vn_us_common_lantern_01"];
    btc_type_tentLamp = ["Land_vn_us_common_lantern_01"];
    btc_type_first_aid_kits = ["vn_b_item_firstaid_01", 
        "vn_o_item_firstaid_01", 
        "vn_b_item_firstaidkit_gh"];
    btc_type_body_bags = ["Land_vn_b_prop_body_01", 
        "Land_vn_b_prop_body_01_02", 
        "Land_vn_b_prop_body_02_02", 
        "Land_vn_b_prop_body_02"];
    btc_type_signs = ["Land_vn_sign_mines_f"];
    btc_type_bloods = _allClassSorted select {_x isKindOf "Blood_01_Base_F"};
    btc_type_medicals = _allClassSorted select {_x isKindOf "MedicalGarbage_01_Base_F"};
    btc_type_table = ["Land_vn_us_common_table_01"];
    btc_type_garbage = ["Land_vn_garbage_square3_f", 
        "Land_vn_garbage_square5_f", 
        "Land_vn_garbage_line_f"];
    btc_type_foodSack = ["Land_vn_foodsack_01_dmg_brown_f", 
        "Land_vn_foodsack_01_empty_brown_f"];
    btc_type_PaperBox = ["Land_vn_b_prop_m149_03"];
    btc_type_EmergencyBlanket = _allClassSorted select {_x isKindOf "Land_EmergencyBlanket_01_base_F"};
    btc_type_Sponsor = _allClassSorted select {
        _x isKindOf "SignAd_Sponsor_F" &&
        {"idap" in toLower _x}
    };
    btc_type_PlasticCase = _allClassSorted select {_x isKindOf "PlasticCase_01_base_F"};
    btc_type_MedicalTent = _allClassSorted select {_x isKindOf "Land_MedicalTent_01_base_F"};
    btc_type_cargo_ruins = _allClassSorted select {
        _x isKindOf "Ruins_F" &&
        {
            "cargo40" in toLower _x ||
            "cargo20" in toLower _x
        }
    };
    btc_type_spill = ["Oil_Spill_F", "Land_DirtPatch_01_6x8_F"] + (_allClassSorted select {
        _x isKindOf "Land_DirtPatch_02_base_F" ||
        {_x isKindOf "WaterSpill_01_Base_F"}
    });
    btc_type_tarp = _allClassSorted select {_x isKindOf "Tarp_01_base_F"};
    btc_type_SCBA = _allClassSorted select {_x isKindOf "SCBACylinder_01_base_F"};
    btc_type_brush = _allClassSorted select {_x isKindOf "Brush_01_base_F"};
    btc_type_broom = _allClassSorted select {_x isKindOf "Broom_01_base_F"};
    btc_type_sponge = _allClassSorted select {_x isKindOf "Sponge_01_base_F"};
    btc_type_connectorTentClosed = _allClassSorted select {_x isKindOf "Land_ConnectorTent_01_closed_base_F"};
    btc_type_crossTent = _allClassSorted select {_x isKindOf "Land_ConnectorTent_01_cross_base_F"};
    btc_type_connectorTent = (_allClassSorted select {_x isKindOf "Land_ConnectorTent_01_base_F"}) - btc_type_connectorTentClosed - btc_type_crossTent;
    btc_type_cargoEMP = _allClassSorted select {_x isKindOf "Cargo_EMP_base_F"};
    btc_type_antenna = _allClassSorted select {_x isKindOf "OmniDirectionalAntenna_01_base_F"};
    btc_type_solarPanel = _allClassSorted select {_x isKindOf "Land_SolarPanel_04_base_F"};

    // The two arrays below are prefixes of buildings and their multiplier.
    // They will multiply the values of btc_rep_malus_building_destroyed and btc_rep_malus_building_damaged,
    // if a building is not present here it will be multiplied by 1.0.
    // Use 0.0 to disable reputation hit on a specific's building destruction.
    // You can modify this for any other terrain, clearing the table will also make all buildings just have a 1.0 multiplier.
    // If there's a hit in btc_buildings_multiplier, btc_buildings_categories_multipliers will NOT be run
    btc_buildings_multipliers = [
        // Specific buildings that need to have a custom modifier.
        ["Land_BellTower", 0.2 ], ["Land_WIP", 1.5], ["Land_u_Addon_01", 0.2],
        ["Land_Airport_Tower", 10.0], ["Land_Mil_ControlTower", 10.0],
        ["Land_TentHangar", 7.0], ["Land_i_Shed_Ind", 1.5], ["Land_u_Shed_Ind", 1.5],
        ["Land_TTowerBig", 6.0], ["Land_TTowerSmall", 4.5], ["Land_cmp_Tower", 4.0]
    ];

    // The multipliers are applied on top of each other, so "Chapel" and "Small" will both multiply the malus value
    btc_buildings_categories_multipliers = [
        ["Shed", 0.75], ["Slum", 0.8], ["Small", 0.8], ["Big", 1.5], ["Villa", 2.0], ["Main", 3.0], ["Tower", 2.0],
        ["HouseBlock", 2.0], ["Panelak", 2.0], ["Tenement", 7.0],
        ["Barn", 1.5], ["School", 3.0], ["Office", 2.0], ["Shop", 1.5], ["Store", 1.5], ["Hospital", 12.0],
        ["Castle", 2.5], ["Chapel", 3.0], ["Minaret", 3.0], ["Mosque", 4.0], ["Church", 4.0], ["Kostel", 4.0],
        ["Lighthouse", 4.0],
        ["Airport", 4.0], ["Hangar", 1.75], ["ControlTower", 2.25], ["Terminal", 3.0],
        ["Hopper", 2.0], ["Tank", 4.0], ["Factory", 2.0], ["Transformer", 1.1],
        ["FuelStation", 5.0],
        ["Barracks", 1.75],
        ["spp", 3.0], ["Powerstation", 3.0],
        ["Pump", 2.5]
    ];
    btc_buildings_changed = [];

    //TAGS
    btc_type_tags = [
        "Land_Graffiti_03_F", 
        "Graffiti_01_v2"
    ];
    btc_type_tags_sentences = [
        "DUCK",
        "RUN",
        "HIDE"
    ];
    btc_tags_player = [];
    btc_tags_server = [];

    //Flowers
    btc_type_flowers = _allClassSorted select {_x isKindOf "FlowerBouquet_base_F"};

    //IED
    private _ieds = ["Land_GarbageContainer_closed_F", "Land_GarbageContainer_open_F", "Land_Portable_generator_F", "Land_WoodenBox_F", "Land_BarrelTrash_grey_F", "Land_Sacks_heap_F", "Land_Wreck_Skodovka_F", "Land_WheelieBin_01_F", "Land_GarbageBin_03_F"] + btc_type_pallet + btc_type_barrel + (_allClassSorted select {
        _x isKindOf "GasTank_base_F" ||
        {_x isKindOf "Garbage_base_F"} ||
        {_x isKindOf "Stall_base_F"} ||
        {_x isKindOf "Market_base_F"} ||
        (_x isKindOf "Constructions_base_F" &&
        {
            "bricks" in toLower _x
        }) ||
        (_x isKindOf "Wreck_base_F" &&
        {
            "car" in toLower _x ||
            "offroad" in toLower _x
        })
    });
    btc_type_ieds = ["Land_vn_basket_ep1", 
"Land_vn_c_prop_basket_04", 
"Land_vn_canisteroil_f", 
"Land_vn_popelnice",
"Land_vn_c_prop_pot_02", 
"Land_vn_c_prop_pot_03", 
"Land_vn_c_prop_pot_04", 
"Land_vn_sack_ep1", 
"Land_vn_transport_crates_ep1", 
"Land_vn_vase_loam_ep1", 
"Land_vn_vase_loam_2_ep1", 
"Land_vn_vase_loam_3_ep1", 
"Land_vn_object_trashcan_01", 
"Land_vn_object_trashcan_02", 
"Land_vn_canisterfuel_blue_f", 
"Land_vn_canisterfuel_red_f", 
"Land_vn_canisterfuel_white_f", 
"Land_vn_bicycle_01_wreck", 
"Land_vn_wicker_basket_ep1", 
"Land_vn_woodencart_f", 
"Land_vn_garbageheap_01_f", 
"Land_vn_garbageheap_02_f", 
"Land_vn_garbageheap_03_f", 
"Land_vn_garbageheap_04_f", 
"Land_vn_sack_f", 
"Land_vn_sacks_goods_f", 
"Land_vn_sacks_heap_f", 
"Land_vn_wheel_cart_ep1", 
"Land_vn_woodencrate_01_f", 
"Land_vn_woodencrate_01_stack_x3_f", 
"Land_vn_woodencrate_01_stack_x5_f",
"vn_wheeled_m151_01_wreck", 
"vn_wheeled_m274_01_wreck", 
"vnx_wheeled_tuktuk_01_wreck", 
"vn_wheeled_lr2a_01_wreck", 
"vn_wheeled_lr2a_03_wreck", 
"vn_wheeled_lr2a_mg_wreck", 
"Land_vn_b_prop_m149_wreck"];
    btc_model_ieds = btc_type_ieds apply {(toLower getText(_cfgVehicles >> _x >> "model")) select [1]};
    btc_type_blacklist = btc_type_tags + btc_type_flowers + ["UserTexture1m_F"]; publicVariable "btc_type_blacklist";

    btc_groundWeaponHolder = [];

    //Respawn
    btc_respawn_tickets = createHashMap;

    btc_slots_serialized = createHashMap;

    //Delay
    btc_delay_agent = 0.1;
    btc_delay_unit = 0.2;
    btc_delay_vehicle = 0.3;
    btc_delay_exec = 0.1;

    //Explosives
    btc_explosives = [];
    btc_explosives_objectSide = createVehicle ["CBA_NamespaceDummy", [-1000, -1000, 0], [], 0, "NONE"];
};

//Civ
// Get all faction from mod there are currently running
//copyToClipboard str (["CIV"] call btc_fnc_get_class);
private _allfaction = ["CIV_F","DEFAULT","CFP_C_AFG","CFP_C_AFRCHRISTIAN","CFP_C_AFRISLAMIC","CFP_C_ASIA","CFP_C_CHERNO_WIN","CFP_C_MALDEN","CFP_C_ME","CSLA_CIV","CUP_C_CHERNARUS","CUP_C_SAHRANI","CUP_C_TK","CUP_C_RU","CWR3_FACTION_CIV","GM_FC_GC_CIV","GM_FC_GE_CIV","LIB_CIV","OPTRE_UEG_CIV","CIV_IDAP_F","RDS_POL_CIV","RDS_RUS_CIV","SPE_CIV","UK3CB_ADC_C","UK3CB_CHC_C","UK3CB_MEC_C","UK3CB_TKC_C","UNSUNG_C","C_VIET"]; //All factions
_p_civ = _allfaction select _p_civ; //Select faction selected from mission parameter
_p_civ_veh = _allfaction select _p_civ_veh; //Select faction selected from mission parameter
private _allclasse = [[_p_civ]] call btc_civ_fnc_class; //Create classes from factions, you can combine factions from the SAME side : [[_p_civ, "btc_ac","LOP_TAK_CIV"]] call btc_civ_fnc_class.

//Save class name to global variable
btc_civ_type_units = _allclasse select 0;
_allclasse = [[_p_civ_veh]] call btc_civ_fnc_class;
btc_civ_type_veh = _allclasse select 2;
btc_civ_type_boats = _allclasse select 1;

btc_w_civs = [
    ["vn_izh54", "vn_izh54_shorty", "vn_k98k", "vn_m38", "vn_m9130", "vn_vz54", "vn_m1891"],
    ["vn_p38s", "vn_izh54_p", "vn_m712"]
];
btc_g_civs = ["vn_rgd5_grenade_mag", "vn_rdg2_mag", "vn_t67_grenade_mag"];

// ANIMALS
btc_animals_type = ["vnx_waterbuffalo_01","Hen_random_F", "Cock_random_F", "Fin_random_F", "Alsatian_Random_F", "Goat_random_F", "Sheep_random_F"];

//FOB
btc_fob_mat = "vn_us_komex_small_01";
btc_fob_structure = "Land_vn_b_trench_firing_01";
btc_fob_flag = "vn_flag_sog";
btc_fob_id = 0;
btc_fob_minDistance = 1500;

//IED
btc_type_ieds_ace = ["IEDLandBig_F", "IEDLandSmall_F"];
btc_ied_deleteOn = -1;

//Int
btc_int_ordersRadius = 25;
btc_int_search_intel_time = 4;
btc_int_sirenRadius = 35;
btc_int_beaconRadius = 15;
btc_int_hornRadius = 20;
btc_int_hornDelay = time;

//Info
btc_info_intel_type = [80, 95];//cache - hd - both
btc_info_hideout_radius = 4000;
btc_info_intels = ["vn_b_prop_cassette_01", 
    "Land_vn_file1_f", 
    "Land_vn_filephotos_f", 
    "Land_vn_file2_f", 
    "vn_b_prop_camera_01"];
private _mapsIntel = switch (worldName) do {
    case "Altis": {["Land_Map_altis_F", "Land_Map_unfolded_Altis_F"]};
    case "Stratis": {["Land_Map_stratis_F", "Land_Map_unfolded_F"]};
    case "Tanoa": {["Land_Map_Tanoa_F", "Land_Map_unfolded_Tanoa_F"]};
    case "Malden": {["Land_Map_Malden_F", "Land_Map_unfolded_Malden_F"]};
    case "Enoch": {["Land_Map_Enoch_F", "Land_Map_unfolded_Enoch_F"]};
    default {["Land_Map_blank_F"]};
};
btc_info_intels append _mapsIntel;

//Supplies
btc_supplies_cargo = "Land_Cargo20_military_green_F";
btc_supplies_mat = [
    _allClassSorted select {_x isKindOf "Land_FoodSack_01_cargo_base_F"},
    _allClassSorted select {_x isKindOf "Land_WaterBottle_01_stack_F"}
];

//Hazmat
btc_type_hazmat = ["HazmatBag_01_F", "Land_MetalBarrel_F"] + (_allClassSorted select {
    _x isKindOf "Land_GarbageBarrel_02_base_F" ||
    {_x isKindOf "Land_FoodContainer_01_F"} ||
    {_x isKindOf "Land_CanisterFuel_F"} ||
    {_x isKindOf "CBRNContainer_01_base_F"} ||
    {_x isKindOf "PlasticCase_01_base_F"}
});

//Containers
btc_containers_mat = ["Land_Cargo20_military_green_F", "Land_Cargo40_military_green_F"];

//Player
btc_player_side = west;
btc_respawn_marker = "respawn_west";
btc_player_type = ["SoldierWB", "SoldierEB", "SoldierGB"] select ([west, east, independent] find btc_player_side);

//Log
btc_construction_array =
[
    [
        "Fortifications",
        "Static",
        "Containers",
        "FOB",
        "Vehicle Logistic"
    ],
    [
        [
            //"Fortifications"
            "Land_vn_usaf_revetment_helipad_02", 
            "Land_vn_b_helipad_01", 
            "Land_vn_usaf_revetment_helipad_01",
            "Land_vn_bunker_big_01", 
            "Land_vn_bunker_big_02", 
            "Land_vn_bunker_small_01", 
            "Land_vn_b_trench_bunker_01_01", 
            "Land_vn_b_trench_bunker_02_01", 
            "Land_vn_b_trench_bunker_02_02", 
            "Land_vn_b_trench_bunker_02_03", 
            "Land_vn_b_trench_bunker_02_04", 
            "Land_vn_b_trench_bunker_01_02", 
            "Land_vn_b_trench_bunker_03_01", 
            "Land_vn_b_trench_bunker_03_02", 
            "Land_vn_b_trench_bunker_03_03", 
            "Land_vn_b_trench_bunker_03_04", 
            "Land_vn_b_trench_bunker_01_03", 
            "Land_vn_b_trench_bunker_04_01", 
            "Land_vn_b_trench_bunker_05_02", 
            "Land_vn_b_trench_bunker_05_01", 
            "Land_vn_b_trench_bunker_06_01", 
            "Land_vn_b_trench_bunker_06_02", 
            "vn_camonet_blufor_f", 
            "vn_camonet_blufor_big_f", 
            "vn_camonet_blufor_open_f", 
            "Land_vn_b_foxhole_01", 
            "Land_vn_b_gunpit_01", 
            "Land_vn_czechhedgehog_01_f", 
            "Land_vn_barricade_01_10m_f", 
            "Land_vn_barricade_01_4m_f", 
            "Land_vn_b_mortarpit_01", 
            "Land_vn_pillboxbunker_01_big_f", 
            "Land_vn_pillboxbunker_01_hex_f", 
            "Land_vn_pillboxbunker_02_hex_f", 
            "Land_vn_sandbagbarricade_01_half_f", 
            "Land_vn_sandbagbarricade_01_f", 
            "Land_vn_sandbagbarricade_01_hole_f", 
            "Land_vn_b_tower_01", 
            "Land_vn_b_trench_20_02", 
            "Land_vn_b_trench_20_01", 
            "Land_vn_b_trench_45_02", 
            "Land_vn_b_trench_45_01", 
            "Land_vn_b_trench_05_03", 
            "Land_vn_b_trench_05_02", 
            "Land_vn_b_trench_05_01", 
            "Land_vn_b_trench_90_02", 
            "Land_vn_b_trench_90_01", 
            "Land_vn_b_trench_corner_01", 
            "Land_vn_b_trench_cross_02", 
            "Land_vn_b_trench_cross_01", 
            "Land_vn_b_trench_end_01", 
            "Land_vn_b_trench_stair_01", 
            "Land_vn_b_trench_stair_02", 
            "Land_vn_b_trench_tee_01", 
            "Land_vn_b_trench_firing_02", 
            "Land_vn_b_trench_firing_04", 
            "Land_vn_b_trench_firing_05", 
            "Land_vn_b_trench_firing_01", 
            "Land_vn_b_trench_firing_03", 
            "Land_vn_b_trench_revetment_tall_03", 
            "Land_vn_b_trench_revetment_05_01", 
            "Land_vn_b_trench_revetment_90_01", 
            "Land_vn_b_trench_revetment_tall_09", 
            "Land_vn_b_trench_wall_10_01", 
            "Land_vn_b_trench_wall_10_03", 
            "Land_vn_b_trench_wall_10_02", 
            "Land_vn_b_trench_wall_01_01", 
            "Land_vn_b_trench_wall_01_03", 
            "Land_vn_b_trench_wall_01_02", 
            "Land_vn_b_trench_wall_03_01", 
            "Land_vn_b_trench_wall_03_03", 
            "Land_vn_b_trench_wall_03_02", 
            "Land_vn_b_trench_wall_05_01", 
            "Land_vn_b_trench_wall_05_03", 
            "Land_vn_b_trench_wall_05_02"
        ],
        [
            //"Static"
            "vn_b_sf_static_tow", 
            "vn_b_sf_static_m1919a4_high", 
            "vn_b_sf_static_m1919a4_low", 
            "vn_b_sf_static_m1919a6", 
            "vn_b_sf_static_m2_high", 
            "vn_b_sf_static_m2_low", 
            "vn_b_sf_static_m40a1rr", 
            "vn_b_sf_static_m60_high", 
            "vn_b_sf_static_m60_low", 
            "vn_b_sf_static_mk18"
        ],
        [
            //"Containers"

        ] + btc_containers_mat,
        [
            //"FOB"
            btc_fob_mat
        ],
        [
            //"Vehicle logistic"
            "ACE_Wheel",
            "ACE_Track",
            "Land_CanisterFuel_F"
        ]
    ]
];

(btc_construction_array select 1) params [
    "_cFortifications", "_cStatics", "_cAmmobox",
    "_cContainers", "_cSupplies", "_cFOB",
    "_cDecontamination", "_cVehicle_logistic"
];
btc_log_def_loadable = flatten (btc_construction_array select 1) + flatten btc_supplies_mat + btc_type_hazmat;
btc_log_def_can_load = _cContainers;
btc_log_def_placeable = (_cFortifications + _cContainers + _cSupplies + _cFOB + _cDecontamination + _cVehicle_logistic + flatten btc_supplies_mat + btc_type_hazmat) select {
    getNumber(_cfgVehicles >> _x >> "ace_dragging_canCarry") isEqualTo 0
};
btc_tow_vehicleTowing = objNull;
btc_log_placing_max_h = 12;
btc_log_placing = false;
btc_log_obj_created = [];

btc_log_fnc_get_nottowable = {
    params ["_tower"];

    switch (true) do {
        case (_tower isKindOf "Tank") : {
            ["Plane", "Helicopter"]; //The tower is a tank so it can't tow: plane and helicopter
        };
        case (_tower isKindOf "Truck_F") : {
            ["Plane", "Helicopter"];
        };
        case (_tower isKindOf "Truck") : {
            ["Plane", "Helicopter"];
        };
        case (_tower isKindOf "Ship") : {
            [];
        };
        case (_tower isKindOf "Car") : {
            ["Truck", "Truck_F", "Tank", "Plane", "Helicopter"]; //The tower is a car so it can't tow: truck, tank, plane and helicopter
        }; 
        default {
            ["Car", "Truck", "Truck_F", "Tank", "Plane", "Helicopter", "Ship"];
        };
    };
};

//Lift
btc_lift_fnc_getLiftable = {
    params ["_chopper"];

    private _array = [];
    switch (typeOf _chopper) do {
        case "B_SDV_01_F" : {
            _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "StaticWeapon", "Car", "Truck", "Wheeled_APC_F", "Tracked_APC", "APC_Tracked_01_base_F", "APC_Tracked_02_base_F", "Air", "Ship", "Tank"] + ((btc_construction_array select 1) select 3) + ((btc_construction_array select 1) select 4) + ((btc_construction_array select 1) select 5);
        };
        default {
            private _MaxCargoMass = getNumber (configOf _chopper >> "slingLoadMaxCargoMass");
            switch (true) do {
                case (_MaxCargoMass <= 510) : {
                    _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "Quadbike_01_base_F", "Strategic"];
                };
                case (_MaxCargoMass <= 2100) : {
                    _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "StaticWeapon", "Car"];
                };
                case (_MaxCargoMass <= 4100) : {
                    _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "StaticWeapon", "Car", "Truck_F", "Truck", "Wheeled_APC_F", "Air", "Ship"] + ((btc_construction_array select 1) select 3) + ((btc_construction_array select 1) select 4) + ((btc_construction_array select 1) select 5);
                };
                case (_MaxCargoMass <= 14000) : {
                    _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "StaticWeapon", "Car", "Truck_F", "Truck", "Wheeled_APC_F", "Tracked_APC", "APC_Tracked_01_base_F", "APC_Tracked_02_base_F", "Air", "Ship", "Tank"] + ((btc_construction_array select 1) select 3) + ((btc_construction_array select 1) select 4) + ((btc_construction_array select 1) select 5);
                };
                default {
                    _array = ["Motorcycle", "ReammoBox", "ReammoBox_F", "StaticWeapon", "Car", "Truck_F", "Truck", "Wheeled_APC_F", "Tracked_APC", "APC_Tracked_01_base_F", "APC_Tracked_02_base_F", "Air", "Ship", "Tank"] + ((btc_construction_array select 1) select 3) + ((btc_construction_array select 1) select 4) + ((btc_construction_array select 1) select 5);
                };
            };
        };
    };
    _array
};

btc_ropes_deployed = false;
btc_lift_min_h  = 7;
btc_lift_max_h  = 12;
btc_lift_radius = 3;
btc_lift_HUD_x  = 0.874;
btc_lift_HUD_y  = 0.848;

//Mil
btc_hq = objNull;
// Get all faction from mod there are currently running
//copyToClipboard str (["EN"] call btc_fnc_get_class);
private _allfaction = ["CSLA","AFMC","FIA","US85","AWAKENED","AFR_ARMY","AOA_CIV_OPERATIONS","ARA_ARMY","ARL_ARMY","BLU_F","BLU_EAF_F","IND_F","BLU_CTRG_F","OPF_G_F","IND_G_F","BLU_G_F","IND_C_F","IND_E_F","IND_L_F","CEC_ARMY","CFP_B_CAF","CFP_O_IQARMY","CFP_B_ILIDF","CFP_B_NAARMY","CFP_O_SDMILITIA","CFP_O_ABUSAYYAF","CFP_B_AFGPOLICE","CFP_O_ALQAEDA","CFP_I_ALNUSRA","CFP_O_ALSHABAAB","CFP_O_BOKOHARAM","CFP_O_CFREBELS","CFP_O_HAMAS","CFP_O_HEZBOLLAH","CFP_B_IQARMY","CFP_B_IQPOLICE","CFP_O_IRARMY","CFP_O_IS","CFP_I_IS","CFP_B_KEARMY","CFP_B_MLARMY","CFP_B_PESH","CFP_O_SOREBEL","CFP_I_SSARMY","CFP_O_SSREBELS","CFP_I_SDREBELS","CFP_I_SDREBELSRF","CFP_O_SDARMY","CFP_O_SYARMY","CFP_O_TBAN","CFP_I_TUAREG","CFP_B_UGARMY","CFP_B_USRANGERS_WDL","CFP_B_USSEALS_DES","CFP_B_USSEALS_WDL","CFP_B_YPG","CFP_O_ANSARALLAH","CFP_B_CZARMY_WDL","CFP_I_WESTULTRA","COL_FAC","COL","COL_RHS_FACTION_EJC","COL_FFAA_FUERZAS_MILITARES_DE_COLOMBIA","CUP_B_AFU","CUP_B_CZ","CUP_B_GB","CUP_B_CDF","CUP_O_CHDKZ","CUP_STATIC_SHIPS","CUP_I_NAPA","CUP_I_RACS","CUP_B_RNZN","CUP_O_RU","CUP_O_SLA","CUP_O_TK","CUP_O_TK_MILITIA","CUP_I_UN","CUP_B_US_ARMY","CUP_B_USMC","CUP_B_GER","CUP_B_HIL","CUP_I_PMC_ION","CUP_O_RUS_M","CFP_B_GBARMY_WDL","CFP_B_DEARMY_WDL","CUP_I_TK_GUE","CFP_B_USMC_DES","CFP_B_CDF_SNW","CFP_O_WAGNER","CFP_I_WAGNER","CFP_O_WAGNER_WIN","CFP_I_WAGNER_WIN","CFP_O_WAGNER_WDL","CFP_I_WAGNER_WDL","CFP_B_USARMY_1991_DES","CFP_B_USARMY_1991_WDL","CFP_B_USARMY_2003_DES","CFP_B_USARMY_2003_WDL","CFP_O_RUMVD","CFP_B_USCIA","CFP_B_USARMY_WDL","CFP_B_AFARMY","CFP_O_CHDKZ_SNW","CFP_O_RUARMY_DES","CWR3_FACTION_FIA","CWR3_FACTION_REBELS_EAST","CWR3_FACTION_REBELS_WEST","CWR3_FACTION_RUS","CWR3_FACTION_USA","CWR3_FACTION_USA_DES","O_FARCS","OPF_R_F","IND_E_ARD_F","BLU_A_TNA_F","BLU_A_F","BLU_A_WDL_F","OPF_R_ARD_F","BLU_GEN_F","OPF_V_F","BLU_CTRG_TNA_F","BLU_T_F","OPF_V_TNA_F","CFP_O_NKARMY","OPF_CD_F","FAP_ARMY","FOW_HEER","FOW_IJA_NAS","FOW_UK_FAA","FOW_USA_NAVY","FOW_WAFFENSS","FOW_AUS","FOW_LUFTWAFFE","FOW_HI","FOW_UK","FOW_USA_P","FOW_IJA","FOW_USA","FOW_USMC","GAL_ARMY","GANGBLUE_ARMY","GANGRED_ARMY","GM_FC_DK","GM_FC_GC_BGS","GM_FC_GC","GM_FC_PL","GM_FC_XX","GM_FC_GE_BGS","GM_FC_GE","O_TALIBAN","IBR_ZETABORN_FACTION","IBR_ROBOTFAC","IND_RAVEN_F","LIB_RKKA_W","LIB_WEHRMACHT_W","LIB_ARR","LIB_MKHL","LIB_RBAF","LIB_ACI","LIB_GUER","LIB_RAAF","LIB_RKKA","LIB_WEHRMACHT","LIB_US_101AB","LIB_US_82AB","LIB_UK_AB_W","LIB_UK_ARMY_W","LIB_US_ARMY_W","LIB_FSJ","LIB_UK_AB","LIB_UK_ARMY","LIB_UK_DR","LIB_US_ARMY","LIB_DAK","LIB_NKVD","LIB_US_RANGERS","LIB_NAC","LIB_FFI","BLU_UN_LXWS","BLU_W_F","MOL_ARMY","OPF_A_F","OPF_F","OPF_T_F","OPF_RAVEN_F","OPTRE_DME","OPTRE_INS","OPTRE_CAA","OPTRE_PD","OPTRE_UNSC","OPTRE_FC_COVENANT","I_COGUEEL_WLD","I_COGUEF_WDL","I_COPARA_WDL","O_COGUEPL_WDL","RHS_FACTION_VMF","RHS_FACTION_MSV","RHS_FACTION_RVA","RHS_FACTION_TV","RHS_FACTION_VDV","RHS_FACTION_VPVO","RHS_FACTION_VV","RHS_FACTION_VVS_C","RHS_FACTION_VVS","RHSSAF_FACTION_ARMY","RHSSAF_FACTION_ARMY_OPFOR","RHSSAF_FACTION_AIRFORCE_OPFOR","RHSSAF_FACTION_AIRFORCE","RHSSAF_FACTION_UN","B_COPOLICE_WDL","B_CONAVY_SNW","RHS_FACTION_USARMY_D","RHS_FACTION_USARMY_WD","RHS_FACTION_USN","RHS_FACTION_SOCOM","RHS_FACTION_USAF","RHS_FACTION_USMC_D","RHS_FACTION_USMC_WD","RHSGREF_FACTION_UN","RHSGREF_FACTION_NATIONALIST","RHSGREF_FACTION_TLA","RHSGREF_FACTION_TLA_G","RHSGREF_FACTION_CDF_GROUND","RHSGREF_FACTION_CDF_GROUND_B","SC_ARCHONSFACTION","SC_FACTION_AR","SC_FACTION_AC","SC_MDF","SC_FACTION_SE","SG_STURM","SG_STURMPANZER","SPE_FFI","SPE_FR_ARMY","SPE_MILICE","SPE_STURM","SPE_US_ARMY","SPE_WEHRMACHT","UK3CB_AAF_O","UK3CB_AAF_I","UK3CB_AAF_B","UK3CB_ANA_B","UK3CB_ANP_B","UK3CB_ADA_O","UK3CB_ADA_I","UK3CB_ADA_B","UK3CB_ADR_O","UK3CB_ADR_I","UK3CB_ADR_B","UK3CB_ADG_O","UK3CB_ADG_I","UK3CB_ADG_B","UK3CB_ADC_O","UK3CB_ADC_I","UK3CB_ADC_B","UK3CB_ADE_O","UK3CB_ADE_I","UK3CB_ADM_O","UK3CB_ADM_I","UK3CB_ADM_B","UK3CB_ADP_O","UK3CB_ADP_I","UK3CB_ADP_B","UK3CB_APD_O","UK3CB_APD_I","UK3CB_APD_B","UK3CB_ARD_O","UK3CB_ARD_I","UK3CB_ARD_B","UK3CB_CHD_O","UK3CB_CHD_W_O","UK3CB_CHD_B","UK3CB_CHD_W_B","UK3CB_CHD_I","UK3CB_CHD_W_I","UK3CB_CHC_O","UK3CB_CHC_I","UK3CB_CHC_B","UK3CB_CCM_O","UK3CB_CCM_B","UK3CB_CCM_I","UK3CB_CPD_O","UK3CB_CPD_I","UK3CB_CPD_B","UK3CB_CW_US_B_EARLY","UK3CB_CW_US_B_LATE","UK3CB_CW_SOV_O_EARLY","UK3CB_CW_SOV_O_LATE","UK3CB_CSAT_A_O","UK3CB_CSAT_W_O","UK3CB_CSAT_M_O","UK3CB_CSAT_B_O","UK3CB_CSAT_N_O","UK3CB_CSAT_F_O","UK3CB_CSAT_G_O","UK3CB_CSAT_U_O","UK3CB_CSAT_S_O","UK3CB_FIA_O","UK3CB_FIA_I","UK3CB_FIA_B","UK3CB_GAF_O","UK3CB_GAF_I","UK3CB_GAF_B","UK3CB_ION_O_DESERT","UK3CB_ION_I_DESERT","UK3CB_ION_B_DESERT","UK3CB_ION_O_URBAN","UK3CB_ION_I_URBAN","UK3CB_ION_B_URBAN","UK3CB_ION_O_WINTER","UK3CB_ION_I_WINTER","UK3CB_ION_B_WINTER","UK3CB_ION_O_WOODLAND","UK3CB_ION_I_WOODLAND","UK3CB_ION_B_WOODLAND","UK3CB_KRG_O","UK3CB_KRG_I","UK3CB_KRG_B","UK3CB_KDF_O","UK3CB_KDF_I","UK3CB_KDF_B","UK3CB_LDF_O","UK3CB_LDF_I","UK3CB_LDF_B","UK3CB_LFR_O","UK3CB_LFR_I","UK3CB_LFR_B","UK3CB_LSM_O","UK3CB_LSM_I","UK3CB_LSM_B","UK3CB_LNM_O","UK3CB_LNM_I","UK3CB_LNM_B","UK3CB_MDF_O","UK3CB_MDF_I","UK3CB_MDF_B","UK3CB_MEC_O","UK3CB_MEC_I","UK3CB_MEC_B","UK3CB_MEE_O","UK3CB_MEE_I","UK3CB_MEI_O","UK3CB_MEI_I","UK3CB_MEI_B","UK3CB_NAP_O","UK3CB_NAP_I","UK3CB_NAP_B","UK3CB_NFA_O","UK3CB_NFA_I","UK3CB_NFA_B","UK3CB_NPD_O","UK3CB_NPD_I","UK3CB_NPD_B","UK3CB_TKC_O","UK3CB_TKC_I","UK3CB_TKC_B","UK3CB_TKM_O","UK3CB_TKA_O","UK3CB_TKA_I","UK3CB_TKA_B","UK3CB_TKP_O","UK3CB_TKP_I","UK3CB_TKP_B","UK3CB_TKM_B","UK3CB_TKM_I","UK3CB_UN_I","UK3CB_UN_B","RHSGREF_FACTION_CDF_AIR","RHSGREF_FACTION_CDF_AIR_B","RHSGREF_FACTION_CDF_NG","RHSGREF_FACTION_CDF_NG_B","RHSGREF_FACTION_CHDKZ","RHSGREF_FACTION_CHDKZ_G","RHSGREF_FACTION_HIDF","UNSUNG_G","UNSUNG_AUS","UNSUNG_NZ","UNSUNG_ROK","UNSUNG_W","UNSUNG_EV","UNSUNG_E","I_ARVN","B_AUS","I_CAM","O_CAM","B_MACV","B_NZ","O_PL","O_PAVN","B_ROK","I_LAO","B_CIA","B_MEDT","O_VC","B_COARMY_WDL","OPF_GEN_F","BLU_ION_LXWS","OPF_SFIA_LXWS","OPF_TURA_LXWS","IND_TURA_LXWS","BLU_TURA_LXWS","BLU_NATO_LXWS"]; //All factions
_p_en = _allfaction select _p_en; //Select faction selected from mission parameter
_allclasse = [[_p_en], _p_en_AA, _p_en_tank] call btc_mil_fnc_class; //Create classes from factions, you can combine factions like that: [[_p_en , "IND_F"], _p_en_AA, _p_en_tank] call btc_mil_fnc_class;

//Save class name to global variable
btc_enemy_side = east;//_allclasse select 0;
btc_type_units = ["vn_o_men_vc_local_14", 
"vn_o_men_vc_local_28", 
"vn_o_men_vc_local_07", 
"vn_o_men_vc_local_21", 
"vn_o_men_vc_local_11", 
"vn_o_men_vc_local_25", 
"vn_o_men_vc_local_32", 
"vn_o_men_vc_local_10", 
"vn_o_men_vc_local_24", 
"vn_o_men_vc_local_31", 
"vn_o_men_vc_local_08", 
"vn_o_men_vc_local_22", 
"vn_o_men_vc_local_29", 
"vn_o_men_vc_local_01", 
"vn_o_men_vc_local_15", 
"vn_o_men_vc_local_16", 
"vn_o_men_vc_local_02", 
"vn_o_men_vc_local_20", 
"vn_o_men_vc_local_06", 
"vn_o_men_vc_local_04", 
"vn_o_men_vc_local_18", 
"vn_o_men_vc_local_03", 
"vn_o_men_vc_local_17", 
"vn_o_men_vc_local_05", 
"vn_o_men_vc_local_19", 
"vn_o_men_vc_local_27", 
"vn_o_men_vc_local_13", 
"vn_o_men_vc_local_09", 
"vn_o_men_vc_local_23", 
"vn_o_men_vc_local_30", 
"vn_o_men_vc_local_12", 
"vn_o_men_vc_local_26", 
"vn_o_men_vc_14", 
"vn_o_men_vc_07", 
"vn_o_men_vc_10", 
"vn_o_men_vc_11", 
"vn_o_men_vc_08", 
"vn_o_men_vc_16", 
"vn_o_men_vc_15", 
"vn_o_men_vc_17", 
"vn_o_men_vc_01", 
"vn_o_men_vc_04", 
"vn_o_men_vc_05", 
"vn_o_men_vc_03", 
"vn_o_men_vc_02", 
"vn_o_men_vc_06", 
"vn_o_men_vc_13", 
"vn_o_men_vc_09", 
"vn_o_men_vc_12"];//_allclasse select 1;
btc_type_divers = ["vn_o_men_vc_09"];//_allclasse select 2;
btc_type_crewmen = selectRandom ["vn_o_men_vc_local_14", 
"vn_o_men_vc_local_28", 
"vn_o_men_vc_local_07", 
"vn_o_men_vc_local_21", 
"vn_o_men_vc_local_11", 
"vn_o_men_vc_local_25", 
"vn_o_men_vc_local_32", 
"vn_o_men_vc_local_10", 
"vn_o_men_vc_local_24", 
"vn_o_men_vc_local_31", 
"vn_o_men_vc_local_08", 
"vn_o_men_vc_local_22", 
"vn_o_men_vc_local_29", 
"vn_o_men_vc_local_01", 
"vn_o_men_vc_local_15", 
"vn_o_men_vc_local_16", 
"vn_o_men_vc_local_02", 
"vn_o_men_vc_local_20", 
"vn_o_men_vc_local_06", 
"vn_o_men_vc_local_04", 
"vn_o_men_vc_local_18", 
"vn_o_men_vc_local_03", 
"vn_o_men_vc_local_17", 
"vn_o_men_vc_local_05", 
"vn_o_men_vc_local_19", 
"vn_o_men_vc_local_27", 
"vn_o_men_vc_local_13", 
"vn_o_men_vc_local_09", 
"vn_o_men_vc_local_23", 
"vn_o_men_vc_local_30", 
"vn_o_men_vc_local_12", 
"vn_o_men_vc_local_26"];  //_allclasse select 3;
btc_type_boats = ["vn_o_boat_01_03", 
"vn_o_boat_01_04", 
"vn_o_boat_01_mg_03", 
"vn_o_boat_01_mg_04", 
"vn_o_boat_01_mg_01", 
"vn_o_boat_01_mg_02", 
"vn_o_boat_01_01", 
"vn_o_boat_01_02", 
"vn_o_boat_02_mg_03", 
"vn_o_boat_02_mg_04", 
"vn_o_boat_02_mg_01", 
"vn_o_boat_02_mg_02", 
"vn_o_boat_02_03", 
"vn_o_boat_02_04", 
"vn_o_boat_02_01", 
"vn_o_boat_02_02", 
"vn_o_boat_08_02", 
"vn_o_boat_08_01", 
"vn_o_boat_07_02", 
"vn_o_boat_07_01"]; //_allclasse select 4;
btc_type_motorized = ["vn_o_bicycle_01_vcmf", 
"vn_o_bicycle_02_vcmf", 
"vn_o_wheeled_btr40_02_vcmf", 
"vn_o_wheeled_btr40_01_vcmf", 
"vn_o_car_01_01", 
"vn_o_car_03_01", 
"vn_o_car_02_01", 
"vnx_o_wheeled_tuktuk_01_vc", 
"vn_o_car_04_01", 
"vn_o_wheeled_z157_ammo_vcmf", 
"vn_o_wheeled_z157_fuel_vcmf", 
"vn_o_wheeled_z157_04_vcmf", 
"vn_o_wheeled_z157_repair_vcmf", 
"vn_o_wheeled_z157_01_vcmf", 
"vn_o_wheeled_z157_02_vcmf"]; //_allclasse select 5;
btc_type_motorized_armed = ["vn_o_wheeled_btr40_mg_02_vcmf", 
"vn_o_wheeled_btr40_mg_01_vcmf", 
"vn_o_wheeled_btr40_mg_04_vcmf", 
"vn_o_wheeled_btr40_mg_06_vcmf", 
"vn_o_wheeled_btr40_mg_05_vcmf", 
"vnx_o_wheeled_tuktuk_mg_02_vc", 
"vnx_o_wheeled_tuktuk_mg_01_vc", 
"vn_o_car_04_mg_01", 
"vn_o_wheeled_z157_mg_01_vcmf"]; //_allclasse select 6;
btc_type_mg = ["vn_o_vc_static_dp28_high", 
"vn_o_vc_static_dshkm_high_01", 
"vn_o_vc_static_dshkm_low_02", 
"vn_o_vc_static_dshkm_low_01", 
"vn_o_vc_static_m1910_low_02", 
"vn_o_vc_static_m1910_low_01", 
"vn_o_vc_static_mg42_high", 
"vn_o_vc_static_mg42_low", 
"vn_o_vc_static_pk_high", 
"vn_o_vc_static_pk_low", 
"vn_o_vc_static_rpd_high", 
"vn_o_vc_static_sgm_low_02", 
"vn_o_vc_static_sgm_low_01", 
"vn_o_vc_spiderhole_02", 
"vn_o_vc_spiderhole_03", 
"vn_o_vc_spiderhole_01"];//_allclasse select 7;
btc_type_gl = ["vn_o_vc_static_type56rr"];//_allclasse select 8;

//Sometimes you need to remove units: - ["Blabla","moreBlabla"];
//Sometimes you need to add units: + ["Blabla","moreBlabla"];
/*switch (_p_en) do {
    case "Myfactionexemple" : {
        btc_type_units = btc_type_units - ["Blabla","moreBlabla"];
        btc_type_divers = btc_type_divers + ["Blabla","moreBlabla"];
        btc_type_crewmen = "Blabla";
        btc_type_boats = btc_type_boats;
        btc_type_motorized = btc_type_motorized;
        btc_type_mg = btc_type_mg;
        btc_type_gl = btc_type_gl;
    };
    case "OPF_G_F" : {
        btc_type_motorized = btc_type_motorized + ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
        btc_type_motorized_armed = btc_type_motorized_armed + ["I_Heli_light_03_F"];
    };
    case "IND_C_F" : {
        btc_type_motorized = btc_type_motorized + ["I_G_Offroad_01_repair_F", "I_G_Offroad_01_F", "I_G_Quadbike_01_F", "I_G_Van_01_fuel_F", "I_Truck_02_transport_F", "I_Truck_02_covered_F"];
        btc_type_motorized_armed = btc_type_motorized_armed + ["I_Heli_light_03_F", "I_G_Offroad_01_F"];
        btc_type_units = btc_type_units - ["I_C_Soldier_Camo_F"];
    };
};
*/
//Chem
btc_chem_range = 3;

//Spect
btc_spect_range = 1000;
btc_spect_updateOn = -1;

//Rep
btc_rep_bonus_cache = 100;
btc_rep_bonus_civ_hh = 3;
btc_rep_bonus_disarm = 15;
btc_rep_bonus_hideout = 200;
btc_rep_bonus_mil_killed = 0.25;
btc_rep_bonus_IEDCleanUp = 10;
btc_rep_bonus_removeTag = 3;
btc_rep_bonus_removeTagLetter = 0.5;
btc_rep_bonus_foodGive = 0.5;

btc_rep_malus_civ_hd = - 2;
btc_rep_malus_animal_hd = - 1;
btc_rep_malus_civ_killed = - 10;
btc_rep_malus_animal_killed = - 5;
btc_rep_malus_civ_suppressed = - 4;
btc_rep_malus_player_respawn = - 10;
btc_rep_malus_veh_killed = - 25;
btc_rep_malus_building_damaged = - 2.5;
btc_rep_malus_building_destroyed = - 5;
btc_rep_malus_foodRemove = - btc_rep_bonus_foodGive;
btc_rep_malus_breakDoor = - 2;
btc_rep_malus_wheelChange = - 7;
btc_rep_malus_mil_killed = - 10;

btc_rep_level_veryLow = 0;
btc_rep_level_low = 200;
btc_rep_level_normal = 500;
btc_rep_level_high = 750;

btc_rep_food = "vn_prop_food_sack_01";

//Headless
btc_units_owners = [];

//Door
btc_door_breaking_time = 60;

//Flag
btc_flag_textures = [
    "\A3\Data_F\Flags\flag_red_CO.paa",
    "\A3\Data_F\Flags\flag_green_CO.paa",
    "\A3\Data_F\Flags\flag_blue_CO.paa",
    '#(argb,8,8,3)color(0.9,0.9,0,1)',
    "\A3\Data_F\Flags\flag_NATO_CO.paa"
];

//Respawn
btc_body_bagTicketPlayer = 1;
btc_body_prisonerTicket = 1;

btc_startDate = [1971, 1, 31, 05, 30];
