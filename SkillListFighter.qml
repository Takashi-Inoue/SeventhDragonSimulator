pragma Singleton
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
        description: [qsTr("Increases the ATK of equipped swords. Higher levels required for higher sword skills.")]
    }
    property Skill keenEdge: Skill {
        skillID: "Keen Edge"
        name: qsTr("Keen Edge")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Medium damage to an enemy."),
            qsTr("130% damage at Lv. 1, 165% damage at Lv. 10."),
            qsTr("With speed proration, this goes off slightly faster than a regular attack. Its hit rate is good.")
        ]
    }
    property Skill rushEdge: Skill {
        skillID: "Rush Edge"
		name: qsTr("Rush Edge")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 5), Qt.point(6, 6)]
        description: [
            qsTr("Medium damage to an enemy, also attacks the enemies to its right and left for small damage."),
            qsTr("Does some damage to the Fighter's main target (130% at Lv. 1, 165% at Lv. 10), and some minor damage to the enemies to the Fighter's main target's left and right (70% at Lv. 1, 120% at Lv. 10)."),
            qsTr("This goes off faster than Grand Buster, but slower than a regular attack. This might be able to go before some faster enemies.")
        ]
    }
    property Skill grandBuster: Skill {
        skillID: "Grand Buster"
		name: qsTr("Grand Buster")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(5, 9),
            Qt.point(8, 10)
        ]
        description: [
            qsTr("Medium damage to all enemies."),
            qsTr("Deals 130% damage at Lv. 1 up to 165% damage at Lv. 10."),
            qsTr("This skill is slow to activate.")
        ]
    }
    property Skill bloodBlade: Skill {
        skillID: "Blood Blade"
		name: qsTr("Blood Blade")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 2), Qt.point(6, 3)]
        description: [
            qsTr("Small damage to an enemy and a small chance to cause Bleeding."),
            qsTr("125% damage and 25% chance of Bleeding at Lv. 1, 150% damage and 45% chance of Bleeding at Lv. 10."),
            qsTr("The Bleeding will sometimes hit, sometimes not depending on the target's resistance to Bleeding."),
            qsTr("Bleeding does 3% of the affected's Max LF per round.")
        ]
    }
    property Skill attackKill: Skill {
        skillID: "Attack Kill"
		name: qsTr("Attack Kill")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Small damage to an enemy and decreases target's ATK."),
            qsTr("110% damage and -10% ATK at Lv. 1, 132% damage and -32% ATK at Lv. 10."),
            qsTr("ATK reduction lasts for 10 turns."),
            qsTr("If the enemy's not resistant at all to the ATK drop, then it is guaranteed to go off. Using EX will not affect the amount of ATK that is lost."),
            qsTr("The attack has to hit to apply the debuff.")
        ]
    }
    property Skill fangBlade: Skill {
        skillID: "Fang Blade"
		name: qsTr("Fang Blade")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Medium damage to an enemy and causes Paralysis. Only usable in Offensive Switch."),
            qsTr("130% damage with a 20% chance of Paralysis at Lv. 1, 180% damage with a 32% chance of paralysis at Lv. 10.")
        ]
    }
    property Skill elementFollower: Skill {
        skillID: "Element Follower"
		name: qsTr("Element Follower")
        type: skillTypeList.sword
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 5), Qt.point(6, 6)]
        description: [
            qsTr("Attacks simultaneously with any ally's attack spell with elemental damage of the same type. Only usable in Defensive Switch."),
            qsTr("The damage bonus is 130% at Lv. 1 and 165% at Lv. 10. Also, an extra 30% of the damage done will be done by the magic that activated this skill. The elemental of this attack is the same as the one used to activate this skill, and non-elemental magic (Mana Bullet, Heaven's Press) will also activate it."),
            qsTr("Full party spells and items will also make this attack every enemy as well."),
            qsTr("This will not activate on any physical attack with elemental damage, or any Veil's counter spells."),
            qsTr("This will activate as many times in a single round as there are spells or items that fire it off."),
            qsTr("Element Follower is based on the Fighter's ATK, as opposed to their MATK."),
            qsTr("This won't activate on spells or items that miss their target, but the hit rate of this attack is very good (it won't miss even when the Fighter's stuck with Blind)."),
            qsTr("Items seem to hit more often than casting spells, so if the enemy is good at evading or if your party is inflicted with Blind, then you might want to use those items instead.")
        ]
    }
    property Skill hexaSpike: Skill {
        skillID: "Hexa Spike"
		name: qsTr("Hexa Spike")
        type: skillTypeList.swordEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to one enemy."),
            qsTr("Sword Fighter's EX skill. This attack does 150% damage before the effects of using EX are factored in.")
        ]
    }
    property Skill axeMastery: Skill {
        skillID: "Axe Mastery"
		name: qsTr("Axe Mastery")
        type: skillTypeList.axeMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [qsTr("Increases the ATK of equipped axes. Higher levels required for higher axe skills.")]
    }
    property Skill powerCrash: Skill {
        skillID: "Power Crash"
		name: qsTr("Power Crash")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Large damage to a single enemy."),
            qsTr("130% damage at Lv. 1, 165% damage at Lv. 10.")
        ]
    }
    property Skill balanceKill: Skill {
        skillID: "Balance Kill"
		name: qsTr("Balance Kill")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Small damage to a single enemy and decreases target's resistance against status ailments."),
            qsTr("110% damage at Lv. 1, and status effects have a good +10% to their success rate. At Lv. 10, damage increases to 132%, and the success rate of status effects increases to +22%.")
        ]
    }
    property Skill defendKill: Skill {
        skillID: "Defend Kill"
		name: qsTr("Defend Kill")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Small damage to a single enemy and lowers target's DEF."),
            qsTr("110% damage and -10% to the target's DEF at Lv. 1, 132% damage and -25% to the target's DEF at Lv. 10."),
            qsTr("Can also be used to cancel the enemies' DEF increases.")
        ]
    }
    property Skill purge: Skill {
        skillID: "Purge"
		name: qsTr("Purge")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 5), Qt.point(6, 6)]
        description: [
            qsTr("Large damage to a single enemy, inflicts instant death without fail if target is below a certain percentage of its Max LF."),
            qsTr("130% damage at Lv. 1 and instantly kills enemies with a LF less than a base 15% of their max LF. At Lv. 10, the damage increases to 180% damage, and the base LF threshold is 45% for the instant death effect."),
            qsTr("It appears as though the LF threshold for instant death effect depends both on the target's remaining LF and the difference in level between the Fighter and your target."),
            qsTr("This skill is incredibly slow.")
        ]
    }
    property Skill shieldAxe: Skill {
        skillID: "Shield Axe"
		name: qsTr("Shield Axe")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 2), Qt.point(6, 3)]
        description: [
            qsTr("Greatly reduces damage to the Fighter for one turn. Only usable in Defensive Switch."),
            qsTr("-50% damage taken from an attack, with around a 33% chance of nullifying it completely at Lv. 1. At Lv. 10, the damage reduction goes to -72%, and the damage nullification effect goes off around 50% of the time. Works against both physical and magic attacks.")
        ]
    }
    property Skill stunBash: Skill {
        skillID: "Stun Bash"
		name: qsTr("Stun Bash")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Medium damage to a single enemy and inflicts Stun."),
            qsTr("125% damage and 64% chance of Stun at Lv. 1, 160% damage and 100% chance of Stun at Lv. 10."),
            qsTr("There is no speed proration attached to this skill.")
        ]
    }
    property Skill arrowFollower: Skill {
        skillID: "Arrow Follower"
		name: qsTr("Arrow Follower")
        type: skillTypeList.axe
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3), Qt.point(6, 4)]
        description: [
            qsTr("Attacks simultaneously with any ally when he uses any bow attack, doing large damage. Only usable in Offensive Switch."),
            qsTr("130% damage at Lv. 1 and 165% damage at Lv. 10. The Fighter will also do 30% of the damage the bow attack did on top of that. This probably does blunt damage."),
            qsTr("Using EX on the turn a Rogue's Falling Star goes off, then using a regular Bow attack on the same turn will allow this to fire twice in one turn."),
            qsTr("With Dual Shot, this will only activate once. With a React Bow Rogue, this won't go off during extra turns unless the Fighter has an extra turn as well."),
            qsTr("This will ignore counters."),
            qsTr("(The MN cost displayed in-game is miswritten)")
        ]
    }
    property Skill tidalWave: Skill {
        skillID: "Tidal Wave"
		name: qsTr("Tidal Wave")
        type: skillTypeList.axeEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to a single enemy with a high chance of inflicting Skill Seal."),
            qsTr("Axe Fighter's EX skill. 160% damage and 75% chance of Skill Seal.")
        ]
    }
    property Skill doubleAttack: Skill {
        skillID: "Double Attack"
		name: qsTr("Double Attack")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Occasionally attacks twice when using a regular attack. The probability increases as this skill's level increases."),
            qsTr("10% chance to attack again after a normal attack at Lv. 1, 23% chance at Lv. 10."),
            qsTr("If the first attack kills the target, the Fighter will aim his next attack at another target."),
            qsTr("This will also go off even when the Fighter is Confused, Charmed, etc.")
        ]
    }
    property Skill berserk: Skill {
        skillID: "Berserk"
		name: qsTr("Berserk")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [Qt.point(1, 5)]
        description: [
            qsTr("Raises ATK by a large amount and self-inflicts Bleeding."),
            qsTr("+5% to your ATK at Lv. 1, +15% at Lv. 10. This will inflict Bleeding on the Fighter. If the Bleeding ends, then Berserk will also end."),
            qsTr("Bleeding has priority over (and will overwrite) Blind, Paralysis, Charm, Confusion, Sleep, and Poison. Bleeding does not have priority over Curse, Fear, Skill Seal, Petrification, and Knocked Out."),
            qsTr("This skill has high priority."),
            qsTr("If Bleeding does work because of some other status ailment (Curse, etc.), then Berserk won't go off.")
        ]
    }
    property Skill genocideTask: Skill {
        skillID: "Genocide Task"
		name: qsTr("Genocide Task")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [Qt.point(1, 2), Qt.point(3, 3)]
        description: [
            qsTr("Greatly increases the attack power of the entire party, but makes them uncontrollable. Your entire party will only use regular attacks until the battle ends."),
            qsTr("+30% to the party's ATK at Lv. 1, +80% at Lv. 5. The entire party won't accept commands and will attack, attack, and attack until the battle ends."),
            qsTr("Can be canceled out when hit by ATK reduction.")
        ]
    }
    property Skill maxingCall: Skill {
        skillID: "Maxing Call"
		name: qsTr("Maxing Call")
        type: skillTypeList.special2Ex
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Increases each party member's Max LF by +20% of their original Max LF for 5 turns."),
            qsTr("Party members already at max LF will have their current LF increased with their Max LF."),
            qsTr("If the party member's already taken damage, then only his Max LF will increase.")
        ]
    }
    property Skill offensiveSwitch: Skill {
        skillID: "Offensive Switch"
		name: qsTr("Offensive Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [Qt.point(1, 5)]
        description: [
            qsTr("Concentrates on attack power and increases ATK. Works like a stance."),
            qsTr("+5% to your ATK at Lv. 1, +15% at Lv. 10. This is a stance, which means the Fighter can benefit from Berserk at the same time. This won't be cancelled by ATK Downs.")
        ]
    }
    property Skill defensiveSwitch: Skill {
        skillID: "Defensive Switch"
		name: qsTr("Defensive Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [Qt.point(1, 5)]
        description: [
            qsTr("Concentrates on guarding and increases DEF. Works like a stance."),
            qsTr("+10% to your DEF at Lv. 1, +30% at Lv. 10. This is a stance and can't be dispelled by DEF Downs.")
        ]
    }
    property Skill endorphin: Skill {
        skillID: "Endorphin"
		name: qsTr("Endorphin")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(2, 4),
            Qt.point(3, 3),
            Qt.point(4, 2),
            Qt.point(5, 1)
        ]
        description: [qsTr("Removes all status abnormalities on self.")]
    }
    property Skill killingReaction: Skill {
        skillID: "Killing Reaction"
		name: qsTr("Killing Reaction")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [Qt.point(1, 3)]
        description: [qsTr("The React status lasts for 3 turns. While the React is active, the Fighter gains an extra turn if he deals the killing blow to an enemy.")]
    }
    property Skill meatEater: Skill {
        skillID: "Meat Eater"
		name: qsTr("Meat Eater")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [qsTr("Receive status increases when you eat an enemy's meat. They're there until you next stay at an inn.")]
    }
}
