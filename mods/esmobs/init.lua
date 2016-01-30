--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--[[
DEPENDS:
default
inventory_plus?
farming?
bones?
intllib?
es?
farorb?
jdukebox?
]]
esmobs={}
--API AND CONFIG
	--dofile(minetest.get_modpath("esmobs").."/config.lua")
	dofile(minetest.get_modpath("esmobs").."/api.lua")
	dofile(minetest.get_modpath("esmobs").."/zmastermoblist.lua")  --All mobs reside in here, the spawning is handles by groups in the mob settings below.   This ensures no unknown nodes during switching.

	--BECAUSE I SUCK AT PROGRAMMING THIS IS THE OVER RIDE TO THE BELOW CODE
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		--dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		--dofile(minetest.get_modpath("esmobs").."/mcmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
		--dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		--dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")


--CRAFTS AND MISC
	dofile(minetest.get_modpath("esmobs").."/crafts.lua")
	--dofile(minetest.get_modpath("esmobs").."/spawner.lua")

--MOB SEPCS
	if inventory_plus then
		dofile(minetest.get_modpath("esmobs").."/mobspec.lua")
	end



--IN CASE BONES IS NOT INSTALLED, THIS OVERRIDES NODES SO YOU HAVE THEM FOR MOBS.
	if not bones then
		dofile(minetest.get_modpath("esmobs").."/bones.lua")
		minetest.register_alias("bones:bones", "esmobs:bones")
	end
		if bones then
		minetest.register_alias("esmobs:bones", "bones:bones")
	end

--IN CASE THROWING IS NOT INSTALLED, THIS DOSEN'T LOAD MCMOBS
	if not throwing then
		dofile(minetest.get_modpath("esmobs").."/throwing.lua")
		minetest.register_alias("throwing:arrow_entity", "esmobs:throwing_entity")
		minetest.register_alias("throwing:bow", "esmobs:bow")
		minetest.register_alias("throwing:arrow", "esmobs:arrow")
	end
	if throwing then
		minetest.register_alias("esmobs:arrow_entity", "throwing:arrow_entity")
		minetest.register_alias("esmobs:bow", "throwing:bow")
		minetest.register_alias("esmobs:arrow", "throwing:arrow")
	end

	print("[ES-Mobs] Extreme")
	print("[ES-Mobs] Survival")
	print("[ES-Mobs] Mobs")
	print("[ES-Mobs] Loaded!")

	if minetest.setting_get("log_mods") then
		minetest.log("action", "esmobs mobs loaded")
	end
