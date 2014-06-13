ITEM.Name = '50-Cent'
ITEM.Price = 500
ITEM.Model = 'models/player/slow/50cent/slow.mdl'
ITEM.Donator = true

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
