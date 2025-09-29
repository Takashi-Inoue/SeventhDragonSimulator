import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill shieldMastery: Skill {
        skillID: "Shield Mastery"
		name: qsTr("Shield Mastery")
        type: skillTypeList.shieldMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the DEF of equipped shields. Required for higher level shield skills."),
            qsTr("+10% to an equipped shield's DEF at Lv. 1, +30% at Lv. 10."),
            qsTr("The ultimate shield receives +7 DEF from this skill maxed."),
            qsTr("Increases to DEF from a shield will actually be shown as if added to the Knight's ATK in Character Info. The numbers are wrong though, so this is thought to be a bug.")
        ]
    }
    property Skill frontShield: Skill {
        skillID: "Front Shield"
		name: qsTr("Front Shield")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Reduces damage to the front row this turn."),
            qsTr("Reduces 20% of the damage at Lv. 1. At Lv. 10, this increases to 50%."),
            qsTr("The skill can only fire once per character per round (hence if the same target gets hit multiple times by the same attack, Shield will only fire once for that character)."),
            qsTr("This will not fire Guard React.")
        ]
    }
    property Skill backShield: Skill {
        skillID: "Back Shield"
		name: qsTr("Back Shield")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Reduces damage to the back row this turn."),
            qsTr("Reduces 20% of the damage at Lv. 1. At Lv. 10, this increases to 50%."),
            qsTr("The skill can only fire once per character per round (hence if the same target gets hit multiple times by the same attack, Shield will only fire once for that character)."),
            qsTr("This will not fire Guard React.")
        ]
    }
    property Skill fireBreak: Skill {
        skillID: "Fire Break"
		name: qsTr("Fire Break")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Greatly reduces Fire damage to all allies this turn."),
            qsTr("Reduces 50% of the elemental damage at Lv. 1. Reduces nearly 100% of the damage at Lv. 10."),
            qsTr("Unlike Front and Back Shield, this (as told in the description) protects your entire party. This does not reduce damage from non-elemental magic."),
            qsTr("When you guard against elemental damage with this skill, Guard React will fire if it's up.")
        ]
    }
    property Skill freezeBreak: Skill {
        skillID: "Freeze Break"
		name: qsTr("Freeze Break")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Greatly reduces Ice damage to all allies this turn."),
            qsTr("Reduces 50% of the elemental damage at Lv. 1. Reduces nearly 100% of the damage at Lv. 10."),
            qsTr("Unlike Front and Back Shield, this (as told in the description) protects your entire party. This does not reduce damage from non-elemental magic."),
            qsTr("When you guard against elemental damage with this skill, Guard React will fire if it's up.")
        ]
    }
    property Skill shockBreak: Skill {
        skillID: "Shock Break"
		name: qsTr("Shock Break")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Greatly reduces Thunder damage to all allies this turn."),
            qsTr("Reduces 50% of the elemental damage at Lv. 1. Reduces nearly 100% of the damage at Lv. 10."),
            qsTr("Unlike Front and Back Shield, this (as told in the description) protects your entire party. This does not reduce damage from non-elemental magic."),
            qsTr("When you guard against elemental damage with this skill, Guard React will fire if it's up.")
        ]
    }
    property Skill shieldPunish: Skill {
        skillID: "Shield Punish"
		name: qsTr("Shield Punish")
        type: skillTypeList.shield
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(5, 9),
            Qt.point(8, 10)
        ]
        description: [
            qsTr("Large damage to one enemy and a small chance to inflict Stun."),
            qsTr("150% damage with a 20% chance to Stun at Lv. 1. At Lv. 10, this deals 200% damage with a 42% chance of Stun. This seems to deal Piercing damage."),
            qsTr("The Shield's DEF seems to count in calculating damage. Your weapon's ATK will contribute as well.")
        ]
    }
    property Skill ultimaGuard: Skill {
        skillID: "Ultima Guard"
		name: qsTr("Ultima Guard")
        type: skillTypeList.shieldEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Improve all allies' defense against physical and magical damage."),
            qsTr("EX skill. This will reduce the damage the party takes from all types of damage by 25% for 3 turns, except for non-elemental magic. Blunt, Piercing, Slashing, Fire, Ice, and Lightning damage are all affected by this."),
            qsTr("Resist Down effects will cancel this.")
        ]
    }
    property Skill guardMastery: Skill {
        skillID: "Guard Mastery"
		name: qsTr("Guard Mastery")
        type: skillTypeList.guardMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases power of guard skills. Required for higher level guard skills."),
            qsTr("At Lv. 1, the Knight takes 99% of the damage they receive (they reduce damage taken by 1%). At Lv. 10, the Knight takes 94% of the damage they receive.")
        ]
    }
    property Skill defenseShift: Skill {
        skillID: "Defense Shift"
		name: qsTr("Defense Shift")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(5, 5),
            Qt.point(8, 6)
        ]
        description: [
            qsTr("Increases all allies' resistance to physical damage."),
            qsTr("This increases the entire party's DEF by +10% at Lv. 1, and +30% at Lv. 10. This lasts for 10 turns.")
        ]
    }
    property Skill parrying: Skill {
        skillID: "Parrying"
		name: qsTr("Parrying")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(3, 5),
            Qt.point(5, 6)
        ]
        description: [
            qsTr("Physical attacks toward the user have a chance to be nullified for this turn."),
            qsTr("30% of all physical attacks targeting the Knight is nullified at Lv. 1. This chance increases to 80% at Lv. 5. This only lasts the turn used in."),
            qsTr("This will fire Guard React."),
            qsTr("Any status ailments that came with the attack might still apply.")
        ]
    }
    property Skill manaParrying: Skill {
        skillID: "Mana Parrying"
		name: qsTr("Mana Parrying")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(3, 5),
            Qt.point(5, 6)
        ]
        description: [
            qsTr("Magical attacks toward the user have a chance to be nullified for this turn."),
            qsTr("30% of all magical attacks targeting the Knight is nullified at Lv. 1. This chance increases to 80% at Lv. 5. This only lasts the turn used in."),
            qsTr("This will fire Guard React."),
            qsTr("Any status ailments that came with the attack might still apply.")
        ]
    }
    property Skill seriousHeart: Skill {
        skillID: "Serious Heart"
		name: qsTr("Serious Heart")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Increases the Knight's resistance against every physical and elemental type of damage."),
            qsTr("When activating this skill, damage taken is reduced to 90% at Lv. 1, 75% at Lv. 10. This lasts for 3 turns."),
            qsTr("Resist Downs will cancel this skill.")
        ]
    }
    property Skill guardian: Skill {
        skillID: "Guardian"
		name: qsTr("Guardian")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Takes damage in place of allies who are at 50% LF or less, and reduces the damage taken from the attack."),
            qsTr("This also reduces the damage the Knight takes by 20% at Lv. 1, and by 50% at Lv. 10."),
            qsTr("Whatever party member the Knight protects will not take damage. The Knight will take the damage instead."),
            qsTr("If the Knight has 50% or less LF, they will protect themselves as well. The only difference will be the damage they takes will decrease."),
            qsTr("This will not protect against counter attacks (like Needle Guard)."),
            qsTr("Guard React will not fire when this skill protects a party member."),
            qsTr("If there is more than one person using Guardian, the party member who will take whatever damage is random.")
        ]
    }
    property Skill toughnessHeart: Skill {
        skillID: "Toughness Heart"
		name: qsTr("Toughness Heart")
        type: skillTypeList.guard
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Increases user's Max LF for 5 turns."),
            qsTr("Increases your Max LF by +10% at Lv. 1, +30% at Lv. 10. This lasts for 5 turns."),
            qsTr("If the Knight is at Max LF when using this, their current LF will rise as well. If they have taken any damage at all, their current LF will stay where it is.")
        ]
    }
    property Skill ultimaParrying: Skill {
        skillID: "Ultima Parrying"
		name: qsTr("Ultima Parrying")
        type: skillTypeList.guardEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Nullify all attacks toward user."),
            qsTr("EX skill. This will nullify any damage taken for the entire turn, physical or magical, but will use up 1 EX for each attack nullified. Unlike Parrying or Mana Parrying, the success rate of this skill is 100%."),
            qsTr("This will fire Guard React.")
        ]
    }
    property Skill chivalryMastery: Skill {
        skillID: "Chivalry Mastery"
		name: qsTr("Chivalry Mastery")
        type: skillTypeList.chivalryMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the ATK of equipped swords. Required for higher level chivalry skills."),
            qsTr("This will increase the ATK of the equipped swords by +10% at Lv. 1, and by +54% at Lv. 10.")
        ]
    }
    property Skill knightBlade: Skill {
        skillID: "Knight Blade"
		name: qsTr("Knight Blade")
        type: skillTypeList.chivalry
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to a single enemy."),
            qsTr("At Lv. 1, this deals 130% damage. At Lv. 10, this deals 165% damage.")
        ]
    }
    property Skill saveTheQueen: Skill {
        skillID: "Save the Queen"
		name: qsTr("Save the Queen")
        type: skillTypeList.chivalry
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("Deals double damage to enemies inflicted with the Princess' Order."),
            qsTr("Deals 200% damage to an enemy in Order status. You can't target enemies that aren't in Order."),
            qsTr("You must have a Princess use Princess Order on an enemy before you can use this. Princess Order will put the enemy in Order status. Princess Order lasts 5 turns.")
        ]
    }
    property Skill knightsFury: Skill {
        skillID: "Knight's Fury"
		name: qsTr("Knight's Fury")
        type: skillTypeList.chivalry
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(4, 2)
        ]
        description: [
            qsTr("Large damage to all enemies when someone on your team is dead."),
            qsTr("At Lv. 1, this skill's damage multiplier is 150%. At Lv. 5, it is 230%. The damage is also multiplied by the number of party members that have fallen."),
            qsTr("Damage is calculated: (Regular attack damage) x (Damage Multiplier) x (Rogues that have used Sacrifice x 1.5) x (Unconscious Princesses x 1.3) x (Other Unconscious party members x 1.2)."),
            qsTr("The skill is somewhat slow to activate."),
            qsTr("It seems the damage only counts at most two Unconscious party members in its calculation. Having two Unconscious party members won't do more damage than having three."),
            qsTr("Princesses, however, always seem to count. With three Unconscious Princesses, this deals around 850% damage at Lv. 5."),
            qsTr("If your Unconscious party member is revived before the Knight can rip this off, then they will spend their turn doing nothing."),
            qsTr("As far as the amount of damage, 2 Knights and 2 Unconscious Princesses can do as much damage as 3 Knights and 1 Unconscious Princess. 1 Knight and 3 Unconscious Princesses will do less than these two.")
        ]
    }
    property Skill cure: Skill {
        skillID: "Cure"
		name: qsTr("Cure")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Recovers one ally's heath."),
            qsTr("Cure heals 24 LF at Lv. 1, 63 LF at Lv. 5, 81 at Lv. 7, and 120 LF at Lv. 10. You get a bonus to the amount healed equal to the Knight's INT / 5.")
        ]
    }
    property Skill cureII: Skill {
        skillID: "Cure II"
		name: qsTr("Cure II")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(3, 5),
            Qt.point(6, 6),
            Qt.point(8, 7)
        ]
        description: [
            qsTr("Greatly recovers one ally's health."),
            qsTr("Cure II heals 54 LF at Lv. 1, 144 LF at Lv. 5, 198 LF at Lv. 7, and completely heals a party member of all damage taken at Lv. 10. Like Cure, you get a bonus equal to the Knight's INT / 5 to the amount you heal.")
        ]
    }
    property Skill clenching: Skill {
        skillID: "Clenching"
		name: qsTr("Clenching")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        description: [
            qsTr("Passive skill. When reduced to 0 LF, there is a chance to self-revive with 1 LF."),
            qsTr("10% chance to revive at 1 LF from fatal damage or instant death at Lv. 1. At Lv. 5, the Knight has a 35% chance of self-reviving.")
        ]
    }
    property Skill defensiveArts: Skill {
        skillID: "Defensive Arts"
		name: qsTr("Defensive Arts")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Passive skill. Occasionally reduces physical damage taken by 50%."),
            qsTr("At Lv. 1, there is a 5% chance that any physical damage the Knight takes will be halved. At Lv. 10, this chance increases to 15%."),
            qsTr("There won't be any special effects that you can see that will tell you when this goes off.")
        ]
    }
    property Skill provoke: Skill {
        skillID: "Provoke"
		name: qsTr("Provoke")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("Shifts enemies' attention to user."),
            qsTr("Puts the Knight in Provoke status. Enemies will target them 35% more frequently at Lv. 1, 70% more frequently at Lv. 5."),
            qsTr("This acts like a Switch skill, so this cannot be canceled or overwritten."),
            qsTr("This will not protect other party members from full party attacks.")
        ]
    }
    property Skill guardReact: Skill {
        skillID: "Guard React"
		name: qsTr("Guard React")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("The React status lasts for 5 turns. While the React is active, the Knight gains an extra turn if a Parry or Break skill is successful.")
        ]
    }
    property Skill walkSafe: Skill {
        skillID: "Walk Safe"
		name: qsTr("Walk Safe")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 3)
        ]
        description: [
            qsTr("Damage done by stepping of Flowers is reduced."),
            qsTr("At Lv. 5, the party won't take any damage from stepping on Flowers."),
            qsTr("At Lv. 3, this will completely negate the damage taken if Max LF is less than 100."),
            qsTr("There will be no message popping up saying that this skill has run out. You can check the Status screen for the Boot icon that says it's up.")
        ]
    }
}
