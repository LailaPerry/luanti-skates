        --- Skates
        local S = minetest.get_translator(minetest.get_current_modname())
	armor:register_armor(":3d_armor:skates", {
		description = S("Skates"),
		inventory_image = "3d_armor_inv_skates.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=800,
			physics_speed=1, physics_jump=0.5},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})

	--- Crafting

	local s = "steel"
	local m = armor.materials.steel

	minetest.register_craft({
		output = "3d_armor:skates"..s,
		recipe = {
			{"", "", ""},
			{"", "", ""},
			{m, m, ""},
		},
	})

