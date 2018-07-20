local PLUGIN = PLUGIN;

SteamIDs={"STEAM_0:1:43417002", 
"STEAM_1:0:132319788", 
"STEAM_0:1:93287482",
"STEAM_0:1:62115861"}

SteamID64s={"76561198026385835", 
"76561198046437505",
"76561198363605988",
"76561198043810656",
"76561198083346999",
"76561198018844295",
"76561198224905304",
"76561198119598042",
"76561198292540676",
"76561198050810667",
"76561198036411084",
"76561198368672450",
"76561198271773408",
"76561198048995964",
"76561198046620590",
"76561198146749278",
"76561198142856184",
"76561198055454218",
"76561197991583369",
"76561198070132294",
"76561198082957678",
"76561198392748958",
"76561198430233358"}

hook.Add("PlayerInitialSpawn","Pepjoin",function(ply)
	if ply:SteamID() in SteamIDs then
		if ply:SteamID64() in SteamIDs then
			timer.Simple(10,function()
				for k,v in pairs(player.GetAll()) do
					if v:SteamID() in SteamIDs then
						if v:SteamID64() in SteamID64s then
							Clockwork.player:Notify(v,"Dr.Pepper HAS ENTERED THE FUCKING SERVER! HE'S A FUCKING PEDO!")
						end
					end
				end
			end)
		timer.Simple(60,function() 
			ply:Kick("Unable to shade polygon paedos, please join https://discord.gg/GsECCPB for more information.")
		end)
	else end
end)