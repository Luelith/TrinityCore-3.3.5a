--[[
*==============================================*  
*                                              *                                
*                                              *
*                                              *    
*                       _                      *
*                      |_|                     *
*                      |_|                     *
*                      |_|                     *
*                      |_|                     *
*                      |_|                     *
*                      |_|                     *
*                      |_|                     *
*    2016 Dev-LV       |_|                     *         
*                      |_|                     *
*                      |_|                     *
*                      |_|_ _ _ _ _ _ _        *
*                      |_|_|_|_|_|_|_|_|       *
*                                              *
*                                              *
* -------------------------------------------- * 
* - Developer(s): LV.                          *
* - Contacto: Luelith@hotmail.com.             *
* - Copyright (C) 2016 Luelith.                *
*==============================================*
]]

local NpcEntry = 99995 --Cambia el ID por el ID del NPC que utilizaras...!

function Morph_Gossip(event, player, unit) 
					if (player:IsInCombat() == true) then
				else
					Morph_Menu(unit, player)
					end
end

function Morph_Menu(unit, player)                                                          
player:GossipMenuAddItem(0, "|TInterface/ICONS/inv_potion_107:25|tTransformaciones", 0, 11) -- Puedes Agregar Mas Linea + Funciones.
player:GossipMenuAddItem(0, "|TInterface/ICONS/Mail_GMIcon:25|tSalir", 0, 12)
player:GossipSendMenu(1, unit)
end

function Morph_Events(event, player, unit, sender, intid, code) 

if ( intid == 11) then
player:GossipMenuAddItem(0, "|TInterface/ICONS/inv_helmet_92:25|tTransformame en Demonio", 0 , 21)
player:GossipMenuAddItem(0, "|TInterface/ICONS/Spell_shadow_painandsuffering:25|tTransformame en Rey Exanime", 0 , 22)
player:GossipMenuAddItem(0, "|TInterface/ICONS/achievement_boss_illidan:25|tTransformame en Illidian", 0 , 23)
player:GossipMenuAddItem(0, "|TInterface/ICONS/inv_jewelry_amulet_03:25|tDestransformame!", 0 , 24)
player:GossipMenuAddItem(0, "|TInterface/ICONS/Mail_GMIcon:25|tSalir", 0 , 25)
player:GossipSendMenu(1, unit)
end
---- Morph
if (intid == 21) then
player:SetDisplayId(20129, player)
player:SendBroadcastMessage("Te has Tranformado en un Demonio!")
player:GossipComplete()
end

if (intid == 22) then
player:SetDisplayId(30721, player)
player:SendBroadcastMessage("Te has Tranformado en Rey Exanime!")
player:GossipComplete()
end

if (intid == 23) then
player:SetDisplayId(21135, player)
player:SendBroadcastMessage("Te has Tranformado en Illidian!")
player:GossipComplete()
end

if (intid == 24) then
player:DeMorph()
player:SendBroadcastMessage("Te has Destransformado")
player:GossipComplete()
end

if (intid == 25) then
player:GossipComplete()
end

if (intid == 12) then
player:GossipComplete()
end
end

RegisterCreatureGossipEvent(NpcEntry, 1, Morph_Gossip)
RegisterCreatureGossipEvent(NpcEntry, 2, Morph_Events)
