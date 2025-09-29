import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill nobleMastery: Skill {
        skillID: "Noble Mastery"
		name: qsTr("Noble Mastery")
        type: skillTypeList.nobleMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the activation speed of Holy Voice songs. Required for higher level Holy Voice songs.")
        ]
    }
    property Skill songOfTheWindAndTrees: Skill {
        skillID: "Song of the Wind and Trees"
		name: qsTr("Song of the Wind and Trees")
        type: skillTypeList.noble
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Imbues all allies with health regeneration."),
            qsTr("Regenerates LF for your party. At Lv. 1, this regenerates 2 LF per turn, and at Lv. 10 it will regenerate 15 LF. At Lv. 6, this regenerates 8 LF."),
            qsTr("This sees +1 LF increases per level except at Lv. 6 and Lv. 10.")
        ]
    }
    property Skill songOfTheMoonlight: Skill {
        skillID: "Song of the Moonlight"
		name: qsTr("Song of the Moonlight")
        type: skillTypeList.noble
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Imbues all allies with mana regeneration."),
            qsTr("Regenerates 1 MN per turn at Lv. 1, 2 MN per turn at Lv. 3, 3 MN per turn at Lv. 5, and 4 MN per turn at Lv. 7. At Lv. 10, the skill finally regenerates 5 MN per turn."),
            qsTr("This is not affected by EX.")
        ]
    }
    property Skill scorchingRhyme: Skill {
        skillID: "Scorching Rhyme"
		name: qsTr("Scorching Rhyme")
        type: skillTypeList.noble
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Increases the attack power of the entire party."),
            qsTr("Increases your party's ATK by +10% at Lv. 1, +35% at Lv. 10. At Lv. 5, the increase is +20%."),
            qsTr("This skill sees +1% increases until Lv. 5 and Lv. 10, where the bonus ramps up."),
            qsTr("This will cancel ATK Downs for all party members.")
        ]
    }
    property Skill solidRhyme: Skill {
        skillID: "Solid Rhyme"
		name: qsTr("Solid Rhyme")
        type: skillTypeList.noble
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Increases the defense power of the entire party."),
            qsTr("Increases the party's DEF by +10% at Lv. 1, up to +25% at Lv. 10. At Lv. 5, the increase is +15%."),
            qsTr("This skill sees +1% increases until Lv. 5 and Lv. 10, where the bonus ramps up."),
            qsTr("Since the damage taken for both physical and magical damage is affected by DEF (magical defense is half DEF, half INT), this will decrease the damage taken from all attacks."),
            qsTr("This will cancel DEF Downs for all party members.")
        ]
    }
    property Skill lullabyOfRipplingWaters: Skill {
        skillID: "Lullaby of Rippling Waters"
		name: qsTr("Lullaby of Rippling Waters")
        type: skillTypeList.noble
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(3, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Puts an ally to Sleep. The ally will regenerate LF and MN until Sleep wears off or is forcibly removed."),
            qsTr("LF Regeneration progresses at 10, 15, 25, 30, to 50 from Lv. 1 to Lv. 5."),
            qsTr("MN Regeneration progresses at 2, 3, 5, 6, to 8 from Lv. 1 to Lv. 5."),
            qsTr("The Sleep will overwrite Blind, Paralysis, Confusion, and Charm, so this can be used to cure those status ailments even at Lv. 1."),
            qsTr("Poison, Curse, Fear, Skill Seal, Bleeding, and Petrification all have higher priority than Sleep, and won't be overwritten. Of course, if the target has one of these status ailments already on them, then this skill will not work.")
        ]
    }
    property Skill angelicaCage: Skill {
        skillID: "Angelica Cage"
		name: qsTr("Angelica Cage")
        type: skillTypeList.nobleEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Greatly increases the magic power of both allies and enemies."),
            qsTr("This says it increases magic power for both allies and enemies, but it actually is a dramatic decrease to everyone's resistances."),
            qsTr("The effectiveness of all magic and elemental attacks, and the success rate of status ailments will be set to 150%, regardless of what resistances or weakness anyone had before. If any target had any weakness over 150%, then that weakness isn't affected."),
            qsTr("This will increase the damage of Mage's spells, Samurai's elemental strikes, Glyph items (which cast Mage spells), and normal attacks that have elemental properties (from an item or the weapon itself, etc.). However, the same goes for all enemies."),
            qsTr("The effect lasts for 3 turns."),
            qsTr("If used this while everyone is affected by Demonic Cage, the two will cancel each other out."),
            qsTr("If the level of whatever skill using to inflict status ailments is low, the three turns might go by without the status ailment going off, so this is not a substitute for low skill levels.")
        ]
    }
    property Skill fearMastery: Skill {
        skillID: "Fear Mastery"
		name: qsTr("Fear Mastery")
        type: skillTypeList.fearMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the activation speed of Evil Voice songs. Required for higher-level Evil Voice songs.")
        ]
    }
    property Skill temptationOfFainting: Skill {
        skillID: "Temptation of Fainting"
		name: qsTr("Temptation of Fainting")
        type: skillTypeList.fear
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3)
        ]
        description: [
            qsTr("High chance to inflict Sleep on all enemies."),
            qsTr("40% chance of inflicting Sleep on all enemies at Lv. 1, 85% chance at Lv. 10."),
            qsTr("Dragons have resistance against to this.")
        ]
    }
    property Skill temptationOfMadness: Skill {
        skillID: "Temptation of Madness"
		name: qsTr("Temptation of Madness")
        type: skillTypeList.fear
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("High chance to Confuse all enemies."),
            qsTr("40% chance of inflicting Confusion on all enemies at Lv. 1, 85% chance at Lv. 10."),
            qsTr("When Confused, enemies will only use normal attacks and there is a chance that the party is targeted."),
            qsTr("Unlike Sleep, Confusion doesn't go away when the target gets hit."),
            qsTr("Symbol encounters can be affected by this, but they usually have resistance.")
        ]
    }
    property Skill temptationOfRevenge: Skill {
        skillID: "Temptation of Revenge"
		name: qsTr("Temptation of Revenge")
        type: skillTypeList.fear
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("High chance to Curse all enemies."),
            qsTr("40% chance of inflicting Curse on all enemies at Lv. 1, 85% chance at Lv. 10."),
            qsTr("At Lv. 10, this will return half the damage enemies do straight back at them."),
            qsTr("Curse will go away as turns go by."),
            qsTr("Bosses don't tend to have resistance to Curse.")
        ]
    }
    property Skill piercingScream: Skill {
        skillID: "Piercing Scream"
		name: qsTr("Piercing Scream")
        type: skillTypeList.fear
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3)
        ]
        description: [
            qsTr("Stuns all enemies."),
            qsTr("40% chance of inflicting Stun on all enemies at Lv. 1, 85% chance at Lv. 10."),
            qsTr("Enemies who are stunned act last in the current turn. If they have already acted this turn, this will have no effect."),
            qsTr("This skill can be resisted.")
        ]
    }
    property Skill shriekOfFallingLeaves: Skill {
        skillID: "Shriek of Falling Leaves"
		name: qsTr("Shriek of Falling Leaves")
        type: skillTypeList.fear
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("High chance of inflicting Bleeding on all enemies."),
            qsTr("40% chance of inflicting Bleeding on all enemies at Lv. 1, 85% chance at Lv. 10."),
            qsTr("Bleeding will siphon away 3% of the target's LF per turn."),
            qsTr("Bleeding will not go away as turns go by.")
        ]
    }
    property Skill demonicCage: Skill {
        skillID: "Demonic Cage"
		name: qsTr("Demonic Cage")
        type: skillTypeList.fearEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Greatly decreases the magic power of both allies and enemies."),
            qsTr("Like Angelica Cage, while the game says it reduces magical power for both allies and enemies, it actually increases everyone's resistances."),
            qsTr("The effectiveness of all magical and elemental damage is reduced to 75%, regardless of what weaknesses were around before. If anybody had a resistance that bumped the effectiveness against a certain element to less than 75%, then their resistance to that element is unchanged."),
            qsTr("This lasts 3 turns."),
            qsTr("If this is used when Angelica Cage is up, then the two will cancel each other out.")
        ]
    }
    property Skill trainingMastery: Skill {
        skillID: "Training Mastery"
		name: qsTr("Training Mastery")
        type: skillTypeList.whipMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the ATK of equipped whips. Required for higher level whip skills."),
            qsTr("+10% to an equipped Whip's ATK at Lv. 1, +30% at Lv. 10.")
        ]
    }
    property Skill trainingWhip: Skill {
        skillID: "Training Whip"
		name: qsTr("Training Whip")
        type: skillTypeList.whip
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to a single enemy with a small chance of inflicting Fear."),
            qsTr("130% damage and a 30% chance of inflicting Fear at Lv. 1, 165% damage and a 75% chance of inflicting Fear at Lv. 10."),
            qsTr("The chance of inflicting Fear also depends on the difference of level between the user and the target. Against stronger dragons or Emperor Dragons, it has a success rate of around 10% to 20%."),
            qsTr("Paralysis will not overwrite Fear, but Fear will overwrite Paralysis.")
        ]
    }
    property Skill punishmentWhipping: Skill {
        skillID: "Punishment Whipping"
		name: qsTr("Punishment Whipping")
        type: skillTypeList.whip
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(6, 6)
        ]
        description: [
            qsTr("Deals damage based on how much LF the Princess has lost, with a multiplier dependent on this skill's level."),
            qsTr("Deals damage based on how much damage taken times a multiplier of 200% at Lv. 1, and 400% at Lv. 10. (+20% increases per level until Lv. 10)"),
            qsTr("Its base damage is (Max LF - Current LF) * (Damage Multiplier). The damage multiplier is dependent on the skill level."),
            qsTr("This has guaranteed hit, even if when Blinded.")
        ]
    }
    property Skill requestProtection: Skill {
        skillID: "Request: Protection"
		name: qsTr("Request: Protection")
        type: skillTypeList.whip
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 6),
            Qt.point(3, 4),
            Qt.point(4, 2),
            Qt.point(5, 0)
        ]
        description: [
            qsTr("Tells all enemy currently stricken with Fear to protect you. These enemies will take attacks in place of the Princess."),
            qsTr("The success rate is 100% as long as the target is inflicted with Fear. All enemies with Fear will be affected when using this skill."),
            qsTr("The effects will only last on the turn when the skill is used.")
        ]
    }
    property Skill requestBetrayal: Skill {
        skillID: "Request: Betrayal"
		name: qsTr("Request: Betrayal")
        type: skillTypeList.whip
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 6),
            Qt.point(3, 4),
            Qt.point(4, 2),
            Qt.point(5, 0)
        ]
        description: [
            qsTr("Tells all enemies currently stricken with Fear to attack other enemies."),
            qsTr("The success rate is 100% as long as the target is inflicted with Fear. All enemies with Fear will be affected when using this skill."),
            qsTr("The effects will only last on the turn when the skill is used.")
        ]
    }
    property Skill requestSuicide: Skill {
        skillID: "Request: Suicide"
		name: qsTr("Request: Suicide")
        type: skillTypeList.whip
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 6),
            Qt.point(3, 4),
            Qt.point(4, 2),
            Qt.point(5, 0)
        ]
        description: [
            qsTr("Tells all enemies currently stricken with Fear to kill itself. These enemies will attack themselves with a regular attack."),
            qsTr("The success rate is 100% as long as the target is inflicted with Fear. All enemies with Fear will be affected when using this skill."),
            qsTr("The effects will only last on the turn when the skill is used.")
        ]
    }
    property Skill nineTail: Skill {
        skillID: "Nine Tail"
		name: qsTr("Nine Tail")
        type: skillTypeList.whipEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Large damage against a single enemy with a large chance of inflicting fear."),
            qsTr("150% damage with +20 POW and a 50% chance of inflicting Fear.")
        ]
    }
    property Skill provoke: Skill {
        skillID: "Provoke"
		name: qsTr("Provoke")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("Switches to Provoke status and increases the frequency enemies attack the Princess."),
            qsTr("The chance the Princess is targeted by enemies becomes 35% at Lv. 1, 60% chance at Lv. 5. Puts the Princess in Provoke status.")
        ]
    }
    property Skill teachingsOfTheQueen: Skill {
        skillID: "Teachings of the Queen"
		name: qsTr("Teachings of the Queen")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        description: [
            qsTr("Passive skill. Increases the amount of experience received from battle."),
            qsTr("Multiplies the Exp. gained by 110% at Lv. 1, up to 120% at Lv. 5. It will not work if the Princess has 0 LF."),
            qsTr("If there are multiple Princesses with this skill, the effect multiplies. Two Princesses with this skill at Lv. 5 will give the party 144% Exp (120% * 120%).")
        ]
    }
    property Skill princessOrder: Skill {
        skillID: "Princess Order"
		name: qsTr("Princess Order")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 6),
            Qt.point(3, 4),
            Qt.point(4, 2),
            Qt.point(5, 0)
        ]
        description: [
            qsTr("Inflicts a single enemy with the Order status for 5 turns, becoming a target for the Knight's Save the Queen.")
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
            qsTr("Restores a single ally's health."),
            qsTr("Recovers around 30 LF at Lv. 1, 130 LF at Lv. 10.")
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
            qsTr("Largely restores a single ally's health."),
            qsTr("Recovers around 70 LF for 4 MN at Lv. 1. At Lv. 5, it will recover around 150 LF for 5 MN and at Lv. 7 it will recover around 210 LF for 6 MN. At Lv. 10, it will completely heal one ally's LF to max for 7 MN.")
        ]
    }
    property Skill princessReact: Skill {
        skillID: "Princess React"
		name: qsTr("Princess React")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("The React status lasts for 5 turns. While the React is active, the Princess gains an extra turn anytime another ally's React gives them an extra turn.")
        ]
    }
}
