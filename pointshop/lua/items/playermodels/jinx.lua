ITEM.Name = 'Jinx'
ITEM.Price = 1500
ITEM.Model = 'models/player_jinxnogun.mdl'
ITEM.Donator = false

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
