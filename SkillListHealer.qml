import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill recoveryMastery: Skill {
		skillID: "Recovery Mastery"
		name: qsTr("Recovery Mastery")
        type: skillTypeList.cureMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [qsTr("Increases the recovery amount and the activation speed of recovery spells. Required for higher healing spells.")]
    }
    property Skill cure: Skill {
		skillID: "Cure"
		name: qsTr("Cure")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 2), Qt.point(6, 3)]
        description: [
            qsTr("Recovers the health of a single ally."),
            qsTr("The base amount of LF recovered is constant for each level, but the Healer get a small bonus to the amount healed based on their INT and their Recovery Mastery skill level (presumably, the bonus is INT / 5 + Recovery Mastery Lv.)."),
            qsTr("EXing this spell will increase the amount healed by +20%.")
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
            Qt.point(8, 7),
            Qt.point(10, 5)
        ]
        description: [
            qsTr("Greatly recovers LF for a single ally."),
            qsTr("At Lv. 10, this spell will recover all of one party member's LF."),
            qsTr("Also like Cure, EXing this spell will increase the amount healed by +20%.")
        ]
    }
    property Skill recoverI: Skill {
		skillID: "Recover I"
		name: qsTr("Recover I")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [Qt.point(1, 3), Qt.point(5, 1)]
        description: [qsTr("Cures Blind, Paralysis, Sleep, and Poison. Starting with only Blind, the spell cures another status ailment as raised, in that order.")]
    }
    property Skill recoverII: Skill {
		skillID: "Recover II"
		name: qsTr("Recover II")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            max: 5
        }
        manaCost: [Qt.point(1, 3), Qt.point(5, 1)]
        description: [qsTr("Cures Confusion, Curse, Fear, and Petrification, in that order.")]
    }
    property Skill cureAll: Skill {
		skillID: "Cure All"
		name: qsTr("Cure All")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 16),
            Qt.point(4, 18),
            Qt.point(7, 20)
        ]
        description: [
            qsTr("Heals the whole party for medium health."),
            qsTr("At Lv. 1, this heals the entire party for around 30 LF. At Lv. 3, this heals around 50 LF. At Lv. 6, it heals around 80. At Lv. 10, this will heal around 130 LF for the entire party."),
            qsTr("This skill seems to come out slower than the single target Cure spells."),
            qsTr("An EX Cure All will heal 20% more than a regular Cure All.")
        ]
    }
    property Skill resurrection: Skill {
		skillID: "Resurrection"
		name: qsTr("Resurrection")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 14),
            Qt.point(4, 16),
            Qt.point(7, 18)
        ]
        description: [qsTr("Resurrects an unconscious ally with a small amount of LF.")]
    }
    property Skill craftMana: Skill {
		skillID: "Craft Mana"
		name: qsTr("Craft Mana")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [Qt.point(1, 5)]
        description: [
            qsTr("Recover a small amount MN for the whole party."),
            qsTr("At Lv. 1, this heals the entire party's MN by 2. At Lv. 5, it heals the party's MN by 7."),
            qsTr("Using EX will double the MN recovered."),
            qsTr("Equipping the Empress Crown will reduce the MN cost to 3.")
        ]
    }
    property Skill vesselOfMiracles: Skill {
		skillID: "Vessel of Miracles"
		name: qsTr("Vessel of Miracles")
        type: skillTypeList.cureEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Resurrects the entire party and recovers their LF and status ailments."),
            qsTr("The Recovery Mastery EX skill. This will not heal the entire party to max LF, but it will heal around 100 LF. (Each level gained heals another point of LF.)")
        ]
    }
    property Skill venomMastery: Skill {
		skillID: "Venom Mastery"
		name: qsTr("Venom Mastery")
        type: skillTypeList.venomMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [qsTr("Increases power of poison spells. Required for higher-level poison spells.")]
    }
    property Skill venom: Skill {
		skillID: "Venom"
		name: qsTr("Venom")
        type: skillTypeList.venom
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(4, 4),
            Qt.point(7, 5),
            Qt.point(9, 6)
        ]
        description: [
            qsTr("High chance of inflicting Poison on an enemy."),
            qsTr("At Lv. 1, it has a 25% chance of inflicting Poison. At Lv. 10, this increases to 70%."),
            qsTr("At Lv. 10, the poison damage dealt is around 145 or so."),
            qsTr("Using EX will not increase the poison damage, but it will make the Poison more likely to hit."),
            qsTr("Against bosses, the Poison does actually take effect with a fairly good success rate, though level differences will affect how often it's successful.")
        ]
    }
    property Skill venomMist: Skill {
		skillID: "Venom Mist"
		name: qsTr("Venom Mist")
        type: skillTypeList.venom
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 7),
            Qt.point(4, 8),
            Qt.point(7, 9),
            Qt.point(9, 10)
        ]
        description: [
            qsTr("High chance of inflicting Poison on all enemies."),
            qsTr("At Lv. 1, it has a 25% chance of inflicting Poison. At Lv. 10, this increases to 70%."),
            qsTr("At Lv. 10, the poison damage dealt is around 145 or so."),
            qsTr("Using EX will not increase the poison damage, but it will make the Poison more likely to hit."),
            qsTr("Against bosses, the Poison does actually take effect with a fairly good success rate, though level differences will affect how often it's successful.")
        ]
    }
    property Skill venomInfecter: Skill {
		skillID: "Venom Infecter"
		name: qsTr("Venom Infecter")
        type: skillTypeList.venom
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 1),
            Qt.point(4, 2),
            Qt.point(7, 3),
            Qt.point(9, 4)
        ]
        description: [
            qsTr("Places a Venom Infecter on an ally, which automatically counterattacks enemies who attack that ally with a chance of inflicting Poison."),
            qsTr("At Lv. 1, this has a 20% chance of inflicting Poison on whatever enemy attacks the ally targeted with this spell. At Lv. 10, the chance it inflicts Poison is 60%. The Veil lasts for 10 turns."),
            qsTr("This will overwrite Veil spells from your Mage, and can be overwritten by those spells as well."),
            qsTr("This skill, which will renew Poison again when successful, will overwrite Venom Amplif effect.")
        ]
    }
    property Skill venomAmplif: Skill {
		skillID: "Venom Amplif"
		name: qsTr("Venom Amplif")
        type: skillTypeList.venom
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 7),
            Qt.point(3, 8),
            Qt.point(5, 9)
        ]
        description: [
            qsTr("Increases the Poison damage of an enemy already inflicted with Poison."),
            qsTr("Increases the damage done by Poison by 130%. Using it more times will multiply all damage multipliers rather than add them."),
            qsTr("Using it twice will increase your Poison damage by 130% x 130% = 169% of the original damage, rather than 130% + 130% = 160% of the original damage."),
            qsTr("After 5 times, the Poison damage will increase by around 370%. Using it 10 times will deal around 1380% damage."),
            qsTr("Raising this skill's level will only increase the extra amount of turns Poison will affect the target."),
            qsTr("If the Poison is overwritten by another status ailment, the effects of the Amplif will be lost.")
        ]
    }
    property Skill manaMastery: Skill {
		skillID: "Mana Mastery"
		name: qsTr("Mana Mastery")
        type: skillTypeList.manaMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [qsTr("Increases the activation speed of mana spells. Required for higher-level mana spells.")]
    }
    property Skill resistElement: Skill {
		skillID: "Resist Element"
		name: qsTr("Resist Element")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 3)]
        description: [
            qsTr("Increases an ally's resistance against Fire, Ice, and Lightning damage."),
            qsTr("Increases one party member's resistance to Fire, Ice, and Lightning damage by 10% at Lv. 1, and by 30% at Lv. 10."),
            qsTr("Cancels out Resist Down.")
        ]
    }
    property Skill lifeSalvation: Skill {
		skillID: "Life Salvation"
		name: qsTr("Life Salvation")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [Qt.point(1, 4)]
        description: [
            qsTr("When cast on an ally, there is a chance that ally will automatically revive with 1 LF if brought to 0 LF."),
            qsTr("For 10 turns, the ally casted on has a chance of reviving automatically at 1 LF if they ever run out of LF. At Lv. 1, they have a 20% chance of auto-reviving. At Lv. 10, have has a 50% chance of auto-reviving.")
        ]
    }
    property Skill healingMana: Skill {
		skillID: "Healing Mana"
		name: qsTr("Healing Mana")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        manaCost: [Qt.point(1, 0)]
        description: [
            qsTr("Recovers the Healer's Mana by a small amount."),
            qsTr("Heals the Healer's MN by 3, and doesn't cost MN to use.")
        ]
    }
    property Skill healersConcentrate: Skill {
		skillID: "Healer's Concentrate"
		name: qsTr("Healer's Concentrate")
        type: skillTypeList.mana
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
            qsTr("During the next turn, any Recover spell or Resurrection will affect the entire party."),
            qsTr("The Concentrate starts taking effect during extra turns you get on the same turn you cast this unless all the extra turns from the next turn are over.")
        ]
    }
    property Skill swingCrush: Skill {
		skillID: "Swing Crush"
		name: qsTr("Swing Crush")
        type: skillTypeList.staff
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Medium physical damage to one enemy."),
            qsTr("130% damage at Lv. 1, 180% damage at Lv. 10.")
        ]
    }
    property Skill earthBreaker: Skill {
		skillID: "Earth Breaker"
		name: qsTr("Earth Breaker")
        type: skillTypeList.staffEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme physical damage to one enemy."),
            qsTr("+50 to ATK and 160% damage.")
        ]
    }
    property Skill enemySense: Skill {
		skillID: "Enemy Sense"
		name: qsTr("Enemy Sense")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Prevents Surprise Attacks."),
            qsTr("30% chance to avoid Surprise Attacks at Lv. 1, 99% chance at Lv. 10."),
            qsTr("This will not prevent Surprise Attacks from a Symbol Encounter touching you while your back is turned.")
        ]
    }
    property Skill anatomySmallMonsters: Skill {
		skillID: "Anatomy: Small Monsters"
		name: qsTr("Anatomy: Small Monsters")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the party's critical hit rate against small monsters."),
            qsTr("At Lv. 1, the entire party has a +7% chance to inflict critical hits. At Lv. 10, this bonus increases to +18%."),
            qsTr("There are some enemies that are not affected by either Anatomy skill. These are probably medium-sized monsters.")
        ]
    }
    property Skill anatomyLargeMonsters: Skill {
		skillID: "Anatomy: Large Monsters"
		name: qsTr("Anatomy: Large Monsters")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Increases the party's critical hit rate against large monsters."),
            qsTr("At Lv. 1, the entire party has a +7% chance to inflict critical hits. At Lv. 10, this bonus increases to +18%."),
            qsTr("There are some enemies that are not affected by either Anatomy skill. These are probably medium-sized monsters.")
        ]
    }
    property Skill deadMansReact: Skill {
		skillID: "Dead Man's React"
		name: qsTr("Dead Man's React")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [Qt.point(1, 4)]
        description: [qsTr("The React status lasts for 5 turns. While the React is active, the Healer gains an extra turn if any ally gets knocked out.")]
    }
    property Skill greatWorker: Skill {
		skillID: "Great Worker"
		name: qsTr("Great Worker")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 5
        }
        description: [
            qsTr("Increases the amount of times you can Harvest from the field before needing to rest."),
            qsTr("At Lv. 1, the number of times you can harvest increases by +1, and at Lv.5 it increases by +5."),
            qsTr("If you have multiple Healers with this skill, the bonuses all add up. Having four Healers with Great Worker Lv. 5 will let you harvest 20 more times before needing to rest."),
            qsTr("This takes effect immediately after you raise it."),
            qsTr("This skill will not take effect if the Healer has run out of LF.")
        ]
    }
    property Skill invisibility: Skill {
		skillID: "Invisibility"
		name: qsTr("Invisibility")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 5),
            Qt.point(4, 4),
            Qt.point(7, 3),
            Qt.point(9, 2)
        ]
        description: [
            qsTr("Decreases encounter rate in the field."),
            qsTr("At Lv. 10, your encounter rate is reduced to around 1/3.")
        ]
    }
}
