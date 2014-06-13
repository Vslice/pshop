ITEM.Name = 'H.U.G.E-249'
ITEM.Price = 5
ITEM.Model = 'models/weapons/w_mach_m249para.mdl'
ITEM.WeaponClass = 'weapon_zm_sledge'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end