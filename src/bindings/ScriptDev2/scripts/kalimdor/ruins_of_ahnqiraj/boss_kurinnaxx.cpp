/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: Boss_Kurinnaxx
SD%Complete: 100
SDComment: VERIFY SCRIPT AND SQL
SDCategory: Ruins of Ahn'Qiraj
EndScriptData */

#include "precompiled.h"

#define SPELL_MORTALWOUND 25646
#define SPELL_SANDTRAP 25656
#define SPELL_ENRAGE 28798

struct MANGOS_DLL_DECL boss_kurinnaxxAI : public ScriptedAI
{
    boss_kurinnaxxAI(Creature* pCreature) : ScriptedAI(pCreature) {Reset();}

    Unit *pTarget;
    uint32 MORTALWOUND_Timer;
    uint32 SANDTRAP_Timer;
    uint32 i;

    void Reset()
    {
        i=0;
        pTarget = NULL;
        MORTALWOUND_Timer = 30000;
        SANDTRAP_Timer = 30000;
    }

    void Aggro(Unit *who)
    {
        pTarget = who;
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        //If we are <30% cast enrage
        if (i == 0 && m_creature->GetHealthPercent() <= 30.0f && !m_creature->IsNonMeleeSpellCasted(false))
        {
            i=1;
            DoCastSpellIfCan(m_creature->getVictim(),SPELL_ENRAGE);
        }

        //MORTALWOUND_Timer
        if (MORTALWOUND_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->getVictim(),SPELL_MORTALWOUND);
            MORTALWOUND_Timer = 30000;
        }else MORTALWOUND_Timer -= diff;

        //SANDTRAP_Timer
        if (SANDTRAP_Timer < diff)
        {
            DoCastSpellIfCan(m_creature->getVictim(),SPELL_SANDTRAP);
            SANDTRAP_Timer = 30000;
        }else SANDTRAP_Timer -= diff;

        DoMeleeAttackIfReady();
    }
};
CreatureAI* GetAI_boss_kurinnaxx(Creature* pCreature)
{
    return new boss_kurinnaxxAI(pCreature);
}

void AddSC_boss_kurinnaxx()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_kurinnaxx";
    newscript->GetAI = &GetAI_boss_kurinnaxx;
    newscript->RegisterSelf();
}