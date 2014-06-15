local function PSCreditDeath( victim, weapon, killer )
 
	if GAMEMODE.round_state == ROUND_ACTIVE then
		if killer:IsValid() then
			if killer:SteamID() != victim:SteamID() then
				if killer:GetTraitor() == victim:GetTraitor() then
				
					if killer:GetTraitor() then
					elseif killer:GetDetective() and victim:GetDetective() then
					elseif killer:GetDetective() then
					elseif not (killer:GetTraitor() or killer:GetDetective()) and not (victim:GetTraitor() or victim:GetDetective()) then
					elseif not (killer:GetTraitor() or killer:GetDetective()) then
					end		

				else
					
					if killer:GetTraitor() and victim:GetDetective() then
						killer:PS_GivePoints(1) --adds one credit when killing detective.
					elseif killer:GetTraitor() then
					elseif killer:GetDetective() then
					elseif not (killer:GetTraitor() or killer:GetDetective()) then
					end	
				end
			end
		end	
	end	
end
hook.Add( "PlayerDeath", "PSCreditDeath", PSCreditDeath )
