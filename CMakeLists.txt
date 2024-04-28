CMAKE_MINIMUM_REQUIRED(VERSION 3.16)

SET(CMAKE_CXX_STANDARD 98)

PROJECT(EFSP)

STRING(APPEND CMAKE_CXX_FLAGS "-fpermissive")

ADD_LIBRARY(efgamex86 SHARED
  efsp/ui/gameinfo.cpp
  efsp/game/AI_Avatar.cpp
  efsp/game/AI_Borg.cpp
  efsp/game/AI_Etherian.cpp
  efsp/game/AI_Harvester.cpp
  efsp/game/AI_HeadBot.cpp
  efsp/game/AI_HirogenAlpha.cpp
  efsp/game/AI_HunterSeeker.cpp
  efsp/game/AI_Parasite.cpp
  efsp/game/AI_Reaver.cpp
  efsp/game/AI_Scavenger.cpp
  efsp/game/AI_ScoutBot.cpp
  efsp/game/AI_Species8472.cpp
  efsp/game/AI_Utils.cpp
  efsp/game/AI_Vohrsoth.cpp
  efsp/game/AI_WarriorBot.cpp
  efsp/game/g_active.cpp
  efsp/game/g_ambients.cpp
  efsp/game/g_boltons.cpp
  efsp/game/g_breakable.cpp
  efsp/game/g_camera.cpp
  efsp/game/g_client.cpp
  efsp/game/g_cmds.cpp
  efsp/game/g_combat.cpp
  efsp/game/g_functions.cpp
  efsp/game/g_fx.cpp
  efsp/game/g_ICARUS.cpp
  efsp/game/g_infostringLoad.cpp
  efsp/game/g_itemLoad.cpp
  efsp/game/g_items.cpp
  efsp/game/g_main.cpp
  efsp/game/g_mem.cpp
  efsp/game/g_misc.cpp
  efsp/game/g_misc_model.cpp
  efsp/game/g_missile.cpp
  efsp/game/g_mover.cpp
  efsp/game/g_nav.cpp
  efsp/game/g_navigator.cpp
  efsp/game/g_object.cpp
  efsp/game/g_objectives.cpp
  efsp/game/g_ref.cpp
  efsp/game/g_roff.cpp
  efsp/game/g_savegame.cpp
  efsp/game/g_session.cpp
  efsp/game/g_spawn.cpp
  efsp/game/g_squad.cpp
  efsp/game/g_svcmds.cpp
  efsp/game/g_target.cpp
  efsp/game/G_Timer.cpp
  efsp/game/g_trigger.cpp
  efsp/game/g_turret.cpp
  efsp/game/g_usable.cpp
  efsp/game/g_utils.cpp
  efsp/game/g_weapon.cpp
  efsp/game/g_weaponLoad.cpp
  efsp/game/NPC.cpp
  efsp/game/NPC_behavior.cpp
  efsp/game/NPC_combat.cpp
  efsp/game/NPC_formation.cpp
  efsp/game/NPC_goal.cpp
  efsp/game/NPC_misc.cpp
  efsp/game/NPC_move.cpp
  efsp/game/NPC_reactions.cpp
  efsp/game/NPC_senses.cpp
  efsp/game/NPC_sounds.cpp
  efsp/game/NPC_spawn.cpp
  efsp/game/NPC_stats.cpp
  efsp/game/NPC_utils.cpp
  efsp/game/Q3_Interface.cpp
  efsp/game/Q3_Registers.cpp
  efsp/game/q_math.cpp
  efsp/game/q_shared.cpp
  efsp/game/bg_lib.cpp
  efsp/icarus/BlockStream.cpp
  efsp/icarus/BlockStream.h
  efsp/icarus/icarus.h
  efsp/icarus/Instance.cpp
  efsp/icarus/Instance.h
  efsp/icarus/Sequence.cpp
  efsp/icarus/sequence.h
  efsp/icarus/Sequencer.cpp
  efsp/icarus/Sequencer.h
  efsp/icarus/TaskManager.cpp
  efsp/icarus/TaskManager.h
  efsp/game/bg_misc.cpp
  efsp/game/bg_pangles.cpp
  efsp/game/bg_panimate.cpp
  efsp/game/bg_pmove.cpp
  efsp/game/bg_slidemove.cpp
  efsp/cgame/cg_camera.cpp
  efsp/cgame/cg_consolecmds.cpp
  efsp/cgame/cg_draw.cpp
  efsp/cgame/cg_drawtools.cpp
  efsp/cgame/cg_effects.cpp
  efsp/cgame/cg_ents.cpp
  efsp/cgame/cg_env.cpp
  efsp/cgame/cg_event.cpp
  efsp/cgame/cg_info.cpp
  efsp/cgame/cg_localents.cpp
  efsp/cgame/cg_main.cpp
  efsp/cgame/cg_marks.cpp
  efsp/cgame/cg_players.cpp
  efsp/cgame/cg_playerstate.cpp
  efsp/cgame/cg_predict.cpp
  efsp/cgame/cg_scoreboard.cpp
  efsp/cgame/cg_servercmds.cpp
  efsp/cgame/cg_snapshot.cpp
  efsp/cgame/cg_syscalls.cpp
  efsp/cgame/cg_text.cpp
  efsp/cgame/cg_view.cpp
  efsp/cgame/cg_weapons.cpp
  efsp/cgame/FX_avatar.cpp
  efsp/cgame/fx_borg.cpp
  efsp/cgame/FX_Compression.cpp
  efsp/cgame/fx_dreadnought.cpp
  efsp/cgame/FX_Grenade_Launcher.cpp
  efsp/cgame/fx_hunter_seeker.cpp
  efsp/cgame/fx_imod.cpp
  efsp/cgame/fx_lib.cpp
  efsp/cgame/FX_Memory.cpp
  efsp/cgame/fx_parasite.cpp
  efsp/cgame/FX_Phaser.cpp
  efsp/cgame/fx_primitive.cpp
  efsp/cgame/fx_proton.cpp
  efsp/cgame/fx_quantum.cpp
  efsp/cgame/fx_reaver.cpp
  efsp/cgame/fx_scavenger.cpp
  efsp/cgame/fx_scout_bot.cpp
  efsp/cgame/FX_Stasis.cpp
  efsp/cgame/fx_tetrion.cpp
  efsp/cgame/fx_transporter.cpp
  efsp/cgame/FX_Util.cpp
  efsp/cgame/FX_Vohrsoth.cpp
)

SET_TARGET_PROPERTIES(efgamex86 PROPERTIES
  COMPILE_FLAGS "-m32"
  LINK_FLAGS "-m32 -static -static-libgcc -static-libstdc++"
  PREFIX ""
)
TARGET_LINK_LIBRARIES(efgamex86 winmm)

ADD_LIBRARY(efuix86 SHARED
  efsp/game/g_weaponLoad.cpp
  efsp/game/q_math.cpp
  efsp/game/q_shared.cpp
  efsp/ui/gameinfo.cpp
  efsp/ui/ui_atoms.cpp
  efsp/ui/ui_cdkey.cpp
  efsp/ui/ui_confirm.cpp
  efsp/ui/ui_connect.cpp
  efsp/ui/ui_controls2.cpp
  efsp/ui/ui_credits.cpp
  efsp/ui/ui_crew.cpp
  efsp/ui/ui_cvars.cpp
  efsp/ui/ui_field.cpp
  efsp/ui/ui_fonts.cpp
  efsp/ui/ui_game.cpp
  efsp/ui/ui_menu.cpp
  efsp/ui/ui_mods.cpp
  efsp/ui/ui_players.cpp
  efsp/ui/ui_preferences.cpp
  efsp/ui/ui_qmenu.cpp
  efsp/ui/ui_sound.cpp
  efsp/ui/ui_turbolift.cpp
  efsp/ui/ui_video.cpp
)

SET_TARGET_PROPERTIES(efuix86 PROPERTIES
  COMPILE_FLAGS "-m32"
  LINK_FLAGS "-m32 -static -static-libgcc -static-libstdc++"
  PREFIX ""
)
TARGET_COMPILE_DEFINITIONS(efuix86 PRIVATE _USRDLL)
