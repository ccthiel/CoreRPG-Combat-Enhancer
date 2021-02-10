function onHover(state)
	local nodeCT = window.getDatabaseNode(); 
	local tokenCT = CombatManager.getTokenFromCT(nodeCT);

	if tokenCT then
		if state then
			addHoverUnderlay();
		else
			TokenManager.updateSizeHelper(tokenCT, nodeCT);
		end
	end
end

function addHoverUnderlay()
	local nodeActiveCT = CombatManager.getActiveCT();
	local nodeCT = window.getDatabaseNode(); 
	local tokenCT = CombatManager.getTokenFromCT(nodeCT);

	-- add token hover underlay
	tokenCT.removeAllUnderlays(); 
	local space = nodeCT.getChild('space');  
	if space == nil then 
		space = 1;
	else
		space = space.getValue()/5/2+0.5; 
	end
	tokenCT.addUnderlay(space, CombatEnhancer.TOKEN_UNDERLAY_HOVER); 
end
