#pragma semicolon 1
#pragma newdecls required

#include <lvl_ranks>
#include <achievements>

public Plugin myinfo =
{
	name	= "[ACHIEVEMENTS] LVL Reward",
	version	= "1.0.0",
	author	= "Pisex",
    url = "Discord => Pisex#0023"
};

public void OnPluginStart()
{
    if(Achievements_CoreIsLoad())
        Achievements_OnCoreLoaded();
}

public void Achievements_OnCoreLoaded()
{
    Achievements_RegisterTrigger("lvl", GetLVLReward);
}

void GetLVLReward(int iClient, const char[] outcome)
{
    LR_ChangeClientValue(iClient,StringToInt(outcome));
}