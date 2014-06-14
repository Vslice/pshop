ITEM.Name = 'Chrysalis[Superadmin Only]'
ITEM.Price = 250
ITEM.Model = 'models/mlp/player_chrysalis.mdl'
ITEM.AllowedUserGroups = { "superadmin" }
ITEM.AdminOnly = true
ITEM.NoPreview = true
//http://steamcommunity.com/sharedfiles/filedetails/?id=249088518&searchtext=

function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
	end

	timer.Simple(1, function() ply:SetModel(self.Model) end)
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
	end
end
