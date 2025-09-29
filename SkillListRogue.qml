import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill swordMastery: Skill {
        skillID: "Sword Mastery"
		name: qsTr("Sword Mastery")
        type: skillTypeList.swordMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Raises the ATK of equipped swords and daggers. Required for higher level dagger skills."),
            qsTr("+10% to the weapon's ATK at Lv. 1, +30% to the weapon's ATK at Lv. 10. This only works on swords and daggers.")
        ]
    }
    property Skill tarantella: Skill {
        skillID: "Tarantella"
        name: qsTr("Tarantella")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy, and small chance to inflict Paralysis."),
            qsTr("120% damage with a 30% chance of Paralysis at Lv. 1. At Lv. 10, the damage multiplier increases to 150% with a 75% chance of inflicting Paralysis."),
            qsTr("Paralysis does not overwrite Fear.")
        ]
    }
    property Skill scorpio: Skill {
        skillID: "Scorpio"
		name: qsTr("Scorpio")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy, and small chance to inflict Poison."),
            qsTr("120% damage with a 30% chance of Poison at Lv. 1, 150% damage with a 75% chance of Poison at Lv. 10."),
            qsTr("The Poison lasts for 5 turns. It affects bosses with decent regularity as well."),
            qsTr("The Poison damage at Lv. 10 is around 110.")
        ]
    }
    property Skill vampire: Skill {
        skillID: "Vampire"
		name: qsTr("Vampire")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy, and recovers LF based on the amount of damage dealt. The recovery is doubled if enemy is Bleeding."),
            qsTr("At Lv. 1, this deals 120% damage and absorbs 15% of the damage dealt as LF. At Lv. 10, this deals 150% damage, and the Rogue get back 50% of the damage in LF.")
        ]
    }
    property Skill daggerFetish: Skill {
        skillID: "Dagger Fetish"
		name: qsTr("Dagger Fetish")
        type: skillTypeList.swordMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the ATK of equipped daggers only."),
            qsTr("+5% to an equipped dagger's ATK at Lv. 1, +70% at Lv. 10."),
            qsTr("This bonus is added to any bonus obtained from Sword Mastery (so having both at Lv. 10 will give +100% to an equipped dagger's ATK)."),
            qsTr("This will not work on swords.")
        ]
    }
    property Skill swordTrap: Skill {
        skillID: "Sword Trap"
		name: qsTr("Sword Trap")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 8)
        ]
        description: [
            qsTr("Counterattacks any enemy that damages the Rogue with physical damage. The damage of the counter is entirely based on damage the Rogue received and Sword Trap's skill level."),
            qsTr("At Lv. 1, the Rogue return 200% of the damage they took. At Lv. 5, the counter deals 350% of the damage they took."),
            qsTr("This only works on physical attacks, and the damage dealt depends on the damage taken. ATK Ups like Scorching Rhyme and even Mastery abilities like Dagger Fetish or Casual Behavior won't increase the damage done with this skill."),
            qsTr("The Rogue still receive all the damage taken. Unlike the Samurai's Unarmed counters, Sword Trap does not nullify or reduce the damage taken."),
            qsTr("Even when knocked out, the Rogue will still counter. They will fall down unconscious after counter.")
        ]
    }
    property Skill maskedPain: Skill {
        skillID: "Masked Pain"
		name: qsTr("Masked Pain")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(2, 4),
            Qt.point(4, 3)
        ]
        description: [
            qsTr("Damages an enemy and inflicts Masked Pain. During Masked Pain, each status ailment the enemy receives is converted into a Pain Counter."),
            qsTr("110% damage at Lv. 1 with an 80% chance of inflicted Masked Pain. 135% damage at Lv. 5 with a 100% chance of inflicting Masked Pain."),
            qsTr("Masked Pain (the status ailment, not the attack) will last for a number of turns based on the enemy's level."),
            qsTr("Any status ailment inflicted on an enemy with Masked Pain will increase the number of Pain Counters that enemy has instead of inflicting whatever status ailment."),
            qsTr("Whenever Masked Pain wears off, the enemy will take a good chunk of damage based on the number of Pain Counters that have been accumulated. If there are 0 Pain Counters, then no damage will be dealt."),
            qsTr("Pain Counters are displayed by the icon next to the enemy's life bar. It will show a number, which is the number of Pain Counters that enemy has."),
            qsTr("Instant death also counts as a status ailment and will add a Pain Counter to the enemy. The enemy will not die though."),
            qsTr("Stun does not count as a status ailment, and won't give Pain Counters."),
            qsTr("Using Masked Pain (the attack) while the opponent is in Masked Pain (the status ailment) will overwrite the status ailment with itself, and it'll lose all the Pain Counters."),
            qsTr("A single enemy can have up to 15 Pain Counters."),
            qsTr("The damage of Masked Pain when it wears off is: (POW + (Weapon ATK x Weapon ATK Multiplier)) x Number of Pain Counters."),
            qsTr("POW Bonus, Dagger Fetish, and Sword Mastery will all affect the damage done by this, but Casual Behavior and Scorching Rhyme will not."),
            qsTr("The most damage you can do with a single Pain Counter seems to be around 340.")
        ]
    }
    property Skill tripleKiss: Skill {
        skillID: "Triple Kiss"
		name: qsTr("Triple Kiss")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(6, 5)
        ]
        description: [
            qsTr("Large damage to an enemy with three or more Pain Counters."),
            qsTr("250% damage at Lv. 1, 500% damage at Lv. 10. Only works on enemies with 3 Pain Counters (in Masked Pain)."),
            qsTr("The Rogue can use this as long as the target is in Masked Pain.")
        ]
    }
    property Skill ecstasyKiss: Skill {
        skillID: "Ecstasy Kiss"
		name: qsTr("Ecstasy Kiss")
        type: skillTypeList.swordEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to an enemy with five or more Pain counters."),
            qsTr("EX skill. 400% damage to an enemy in Masked Pain with more than 5 Pain Counters.")
        ]
    }
    property Skill shotMastery: Skill {
        skillID: "Shot Mastery"
		name: qsTr("Shot Mastery")
        type: skillTypeList.shotMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(6, 2)]
        }
        description: [
            qsTr("Raises the ATK of equipped bows. Required for higher level bow skills."),
            qsTr("+10% to an equipped bow's ATK at Lv. 1, +54% to an equipped bow's ATK at Lv. 10.")
        ]
    }
    property Skill seeker: Skill {
        skillID: "Seeker"
		name: qsTr("Seeker")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            max: 1
        }
        manaCost: [
            Qt.point(1, 0)
        ]
        description: [
            qsTr("Recovers the decreasing hit rate of bow attacks.")
        ]
    }
    property Skill sleepShot: Skill {
        skillID: "Sleep Shot"
		name: qsTr("Sleep Shot")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy, and small chance to inflict Sleep."),
            qsTr("120% damage at Lv. 1 with a 30% chance of inflicting Sleep. At Lv. 10, this deals 150% damage with a 75% chance of inflicting Sleep.")
        ]
    }
    property Skill panicShot: Skill {
        skillID: "Panic Shot"
		name: qsTr("Panic Shot")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy, and small chance to Confuse."),
            qsTr("120% damage at Lv. 1 with a 30% chance of inflicting Confusion. At Lv. 10, this deals 150% damage with a 75% chance of inflicting Confusion."),
            qsTr("Enemies will not use skills when they are Confused.")
        ]
    }
    property Skill headShot: Skill {
        skillID: "Head Shot"
		name: qsTr("Head Shot")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(6, 5)
        ]
        description: [
            qsTr("Medium damage to one enemy, and small chance of Instant Death."),
            qsTr("130% damage at Lv. 1 with a 30% chance of inflicting Instant Death. At Lv. 10, this deals 165% damage with a 75% chance of Instant Death.")
        ]
    }
    property Skill sonicShot: Skill {
        skillID: "Sonic Shot"
		name: qsTr("Sonic Shot")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(4, 5)
        ]
        description: [
            qsTr("Large damage to an enemy that attacks the user with a projectile or magical attack."),
            qsTr("Nullifies damage from projectiles or magic from one target and counterattacks with a shot of your own. The counter deals 110% damage at Lv. 1, 135% damage at Lv. 5."),
            qsTr("If the counter does not go off by the end of the turn, the Rogue will make small attack at 90% damage (at Lv. 5) after everyone else has acted."),
            qsTr("This skill does not prevent any status ailments the original attack came with."),
            qsTr("Ranged attacks that hit multiple times (e.g. 30mm Cannon) will only be countered once."),
            qsTr("The Fighter's Arrow Follower will not fire off a counter."),
            qsTr("The skill will still be fired even if the Rogue is Cursed."),
            qsTr("It seems as though if you EX this skill and don't counter anything, you'll lose an extra EX (for a total of 2 EX) when you fire off your shot at the end of the turn. If you do counter an attack, you'll use 1 EX as normal.")
        ]
    }
    property Skill dualShot: Skill {
        skillID: "Dual Shot"
		name: qsTr("Dual Shot")
        type: skillTypeList.shot
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(4, 5)
        ]
        description: [
            qsTr("Attacks a single enemy twice for small damage each hit."),
            qsTr("Fires off two attacks at an enemy. At Lv. 1, both attacks deal 70% damage. At Lv. 5, both attacks deal 100% damage."),
            qsTr("If the first shot kills the original target, the second shot will go to a different target."),
            qsTr("It is unknown whether or not this will decrease your bow's hit rate twice as fast with its two shots."),
            qsTr("Fighter's Arrow Follower will only follow this once.")
        ]
    }
    property Skill fallingStar: Skill {
        skillID: "Falling Star"
		name: qsTr("Falling Star")
        type: skillTypeList.shotEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to a single enemy after three turns."),
            qsTr("EX skill. This deals 170% damage to one enemy after two turns go by."),
            qsTr("The Fighter's Arrow Follower will fire twice if a Rogue uses a bow attack when this hits, once for each attack."),
            qsTr("The description says that Falling Star will hit in 3 turns, but this includes the turn fired. If you use this on turn 1, then Falling Star will hit on turn 3.")
        ]
    }
    property Skill footworkMastery: Skill {
        skillID: "Footwork Mastery"
		name: qsTr("Footwork Mastery")
        type: skillTypeList.special2Mastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the Rogue's SPD. Required for higher level footwork skills."),
            qsTr("Gives a +10% bonus to your SPD at Lv. 1, and a +60% bonus at Lv. 10."),
            qsTr("This doesn't do anything else at Lv. 1, but it seems to give a 120% multiplier to damage done by Footwork Skills at Lv. 10.")
        ]
    }
    property Skill sandKick: Skill {
        skillID: "Sand Kick"
		name: qsTr("Sand Kick")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(6, 5)
        ]
        description: [
            qsTr("High chance of inflicting Blind on a single enemy."),
            qsTr("50% chance of inflicting Blind at Lv. 1, 100% chance of inflicting Blind at Lv. 10."),
            qsTr("This only seems to last 1 turn, though, and doesn't deal damage."),
            qsTr("Works even in the middle of the ocean.")
        ]
    }
    property Skill replaceFirst: Skill {
        skillID: "Replace First"
		name: qsTr("Replace First")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(2, 3),
            Qt.point(3, 2),
            Qt.point(4, 1),
            Qt.point(5, 0)
        ]
        description: [
            qsTr("Gives up own turn to let an ally go first this turn."),
            qsTr("This costs 4 MN at Lv. 1, and 0 MN at Lv. 5. This will never fail."),
            qsTr("Using this on a party member will let them go before anyone who used EX goes.")
        ]
    }
    property Skill escapeStance: Skill {
        skillID: "Escape Stance"
		name: qsTr("Escape Stance")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(2, 4),
            Qt.point(3, 3),
            Qt.point(4, 2),
            Qt.point(5, 1)
        ]
        description: [
            qsTr("Chance of escaping from battle increased, and reduces damage taken when trying to escape."),
            qsTr("This costs 5 MN at Lv. 1 and 1 MN at Lv. 5."),
            qsTr("The Rogue itself will not try to run away when using this. If the enemy acts before the party, the damage they receive will be reduced.")
        ]
    }
    property Skill hiding: Skill {
        skillID: "Hiding"
		name: qsTr("Hiding")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(4, 6)
        ]
        description: [
            qsTr("Shifts to Ambush stance, which decreases the frequency the Rogue is targeted by the enemies. While in Ambush, regular attacks have a chance of becoming an Ambush attack, which deals critical hit damage. Being hit may cause the Rogue to be forced out of Ambush."),
            qsTr("At Lv. 1, there is a 40% chance of an Ambush attack activating off a regular attack, and the Rogue will be targeted by attacks with 30% less frequency. At Lv. 10, the Rogue has a 70% chance of Ambushing off a regular attack. Enemies will target the Rogue 50% less often."),
            qsTr("If the Rogue is hit while in Hiding, there is a 30% chance of being taken out of Hiding."),
            qsTr("Ambush attacks deal as much damage as a critical hit.")
        ]
    }
    property Skill sacrifice: Skill {
        skillID: "Sacrifice"
		name: qsTr("Sacrifice")
        type: skillTypeList.manaEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to all enemies, and heals all allies. The Rogue will be irreplaceably gone forever, along with his equipment."),
            qsTr("All enemies 10 levels higher than the Rogue (or lower than this) will instantly die or take 70% of their Max LF in damage. Your party members will also be healed, though they won't be resurrected if they're already down."),
            qsTr("If the Rogue is the only man standing, using this will give you a Game Over."),
            qsTr("The damage on Knight's Fury is affected more by a Rogue using this skill that anything else. For each Rogue that uses this skill, the damage on Knight's Fury will be multiplied by 1.5. Unconscious Princesses will multiply the damage by 1.3 each.")
        ]
    }
    property Skill killersAttract: Skill {
        skillID: "Killer's Attract"
		name: qsTr("Killer's Attract")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(2, 4),
            Qt.point(3, 3),
            Qt.point(4, 2),
            Qt.point(5, 1)
        ]
        description: [
            qsTr("Increases encounter rate."),
            qsTr("At Lv. 5, it will take around 3 or 4 steps to get into a battle in a forest."),
            qsTr("Demonic Countenance (a Samurai skill) will take priority over this.")
        ]
    }
    property Skill roguesEye: Skill {
        skillID: "Rogue's Eye"
		name: qsTr("Rogue's Eye")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("After battle, there is a chance of finding money on each enemy you've defeated."),
            qsTr("At Lv. 1, you'll have a 20% chance of finding money after a battle ends. At Lv. 10, you'll find money after 42% of your battles."),
            qsTr("Around Kazan, you'll find around 10G. Dragons in the latter half of the game will give you 400G."),
        ]
    }
    property Skill casualBehavior: Skill {
        skillID: "Casual Behavior"
		name: qsTr("Casual Behavior")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the Rogue's ATK if a Samurai is in the party."),
            qsTr("This multiplies your ATK if a Samurai is in the party by 110% at Lv. 1, and 140% at Lv. 10."),
            qsTr("The bonus includes POW, equipment, and Mastery skills. All of it gets multiplied by the bonus this skill gives."),
            qsTr("The Japanese name for this refers to the acts of walking, standing, sitting, and laying down - what's called the Four Cardinal Behaviors that everyone does every day of their life. It can be used to figuratively mean things like everyday life, things you do everyday, and a host of others. Translations on this can be all over the place. If there's no context, even more so.")
        ]
    }
    property Skill trickReact: Skill {
        skillID: "Trick React"
		name: qsTr("Trick React")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("The React status lasts for 5 turns. While the React is active, the Rogue gains an extra turn whenever Sword Trap successfully counters an attack, or when an Ambush attack is made from Hiding.")
        ]
    }
}
