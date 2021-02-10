function onInit()		
	registerMenuItems();		
end

function registerMenuItems() 	
	OptionsManager.registerOption2("CORERPG_COMBAT_ENHANCER_SHOW_REACH_UNDERLAY", false, "menu_option_header_corerpg_combat_enhancer", "menu_option_show_reach_underlay", "option_entry_cycler", { labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });

	OptionsManager.registerOption2("CORERPG_COMBAT_ENHANCER_SHOW_FACTION_UNDERLAY", false, "menu_option_header_corerpg_combat_enhancer", "menu_option_show_faction_underlay", "option_entry_cycler", { labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" });
end
