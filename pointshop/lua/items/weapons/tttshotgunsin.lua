ITEM.Name = 'Shotgun'
ITEM.Price = 5
ITEM.Model = 'models/weapons/w_shot_xm1014.mdl'
ITEM.WeaponClass = 'weapon_zm_shotgun'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end