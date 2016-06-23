local NpcEntry = 190022

function Morph_Gossip(event, player, unit) 
					if (player:IsInCombat() == true) then
				else
					Morph_Menu(unit, player)
					end
end

function Morph_Menu(unit, player)
player:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_WorldEvent_LittleHelper:25|tMoprh", 0, 11)
player:GossipMenuAddItem(0, "|TInterface/ICONS/Mail_GMIcon:25|t|cFFFF0000Salir", 0, 12)
player:GossipSendMenu(1, unit)
end

function Morph_Events(event, player, unit, sender, intid, code) 

if ( intid == 11) then
player:GossipMenuAddItem(0, "|TInterface/ICONS/achievement_boss_illidan:25|tTransformame en Tauren", 0 , 21)
player:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_BG_returnXflags_def_WSG:25|tDestranformame! please!", 0 , 22)
player:GossipSendMenu(1, unit)
end
---- Morph
if (intid == 21) then
player:SetDisplayId(20129, player)
player:SendBroadcastMessage("Te has Tranformado en un Demonio!")
player:GossipComplete()
end

if (intid == 22) then
player:DeMorph()
player:SendBroadcastMessage("Te has Destransformado")
player:GossipComplete()
end

if (intid == 12) then
player:GossipComplete()
end
end

RegisterCreatureGossipEvent(NpcEntry, 1, Morph_Gossip)
RegisterCreatureGossipEvent(NpcEntry, 2, Morph_Events)



amor : 6562990

96.44.135.74

