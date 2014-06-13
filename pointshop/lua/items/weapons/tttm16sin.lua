ITEM.Name = 'M16'
ITEM.Price = 5
ITEM.Model = 'models/weapons/w_rif_m4a1.mdl'
ITEM.WeaponClass = 'weapon_ttt_m16'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end