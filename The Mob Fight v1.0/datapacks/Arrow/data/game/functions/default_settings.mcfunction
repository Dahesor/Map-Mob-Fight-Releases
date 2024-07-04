difficulty normal
scoreboard players set TargetScore Options 2000
scoreboard players set MaxGameLength Options 36000
scoreboard players set oreCoolDownBase Options 100
scoreboard players set killScore Options 225
scoreboard players set selfkillScore Options 80
scoreboard players set villagerScore Options 50
scoreboard players set reviveCooldown Options 100
scoreboard players set doArrowLandPosCheck Options 0
scoreboard players set creeperGriefing Options 1
scoreboard players set CrazyMode Options 3600
scoreboard players set showPlayerHealth Options 1
scoreboard players set disableOreConvert Options 1
scoreboard players set villagerSpawnTime Options 8000
scoreboard players set Performance Options 0
scoreboard players set LimitCrazyMode Options 0

#define score_holder TargetScore The Target Score that Players need to reach in order to win
#define score_holder MaxGameLength The Time limit of a Game
#define score_holder oreCoolDownBase The base cooldown for a new ore to be placed
#define score_holder killScore The score a team get on kill
#define score_holder selfkillScore The score a team get when their opponents die
#define score_holder villagerScore Rge score a team get after killing a enemy villager
#define score_holder villagerSpawnTime The time interval between two villager spawns
#define score_holder reviveCooldown The cooldown time of reviving
#define score_holder doArrowLandPosCheck If turned on, arrows that shot to your own side will just disappear
#define score_holder creeperGriefing If turned on, creeper explosions can break certain blocks
#define score_holder CrazyMode How long the crazyMode is. Set to negative numbers to disable
#define score_holder showPlayerHealth When turned on, show all players' health bar in tab list
#define score_holder disableOreConvert If set to 1, disable ore conversion page
#define score_holder Performance Determines how much resource the game should take
#define score_holder LimitCrazyMode If turned on, less infinate zombie arrows
#define score_holder AdminSettingsOn If turned on, only admin can change the settings
#define score_holder AdminTeamsOn If turned on, only admin can modify team members
#define score_holder AdminJoinMidOn If turned off, players cannot join a game after it starts


## Gamode Private:

scoreboard players set VILLAGER.KillScore Options 10
scoreboard players set VILLAGER.selfKillScore Options 5
scoreboard players set VILLAGER.villagerScore Options 150
scoreboard players set VILLAGER.reviveCooldown Options 300
scoreboard players set VILLAGER.villagerSpawnTime Options 5500
scoreboard players set VILLAGER.BaseHealth Options 160
scoreboard players set THUNDER.flashMaxChance Options 570000

#define score_holder VILLAGER.KillScore
#define score_holder VILLAGER.selfKillScore
#define score_holder VILLAGER.villagerScore
#define score_holder VILLAGER.reviveCooldown
#define score_holder VILLAGER.villagerSpawnTime
#define score_holder VILLAGER.BaseHealth
#define score_holder THUNDER.flashMaxChance