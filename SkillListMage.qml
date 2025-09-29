import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill flameMastery: Skill {
        skillID: "Flame Mastery"
		name: qsTr("Flame Mastery")
        type: skillTypeList.flameMastery
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        description: [
            qsTr("Increases the damage and activation speed of fire spells. Required for higher-level fire spells.")
        ]
    }
    property Skill flame: Skill {
        skillID: "Flame"
		name: qsTr("Flame")
        type: skillTypeList.flame
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Fire damage to a single enemy."),
            qsTr("The spell starts at 300 at Lv. 1 with a 150% damage multiplier, and increases to 400 with a 200% damage multiplier at Lv. 5.")
        ]
    }
    property Skill volcano: Skill {
        skillID: "Volcano"
		name: qsTr("Volcano")
        type: skillTypeList.flame
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Fire damage to all enemies."),
            qsTr("The attack power of this spells is 240 with a 150% damage multiplier at Lv. 1. At Lv. 5, these spell's attack power is 320 with a 200% damage multiplier.")
        ]
    }
    property Skill flameVeil: Skill {
        skillID: "Flame Veil"
		name: qsTr("Flame Veil")
        type: skillTypeList.flame
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Places a Flame Veil on an ally, which automatically counterattacks enemies who attack that ally with Fire damage."),
            qsTr("Just as powerful as single target elemental spell, this has 300 attack power with a 150% damage multiplier at Lv. 1, rising to 400 attack power with a 200% damage multiplier at Lv. 5."),
            qsTr("Veil status last for 10 turns."),
            qsTr("The veil activates when the affected takes a physical melee attack. It will activate as many times as you're attacked. It will not fire off on things like Breath or other magic, or projectile attacks like 30mm Cannon."),
            qsTr("The Veil's counter attack has high accuracy."),
            qsTr("This spell is not affected by EX, but affected by Princess' Angelica Cage.")
        ]
    }
    property Skill theCreationOfPurgatory: Skill {
        skillID: "The Creation of Purgatory"
		name: qsTr("The Creation of Purgatory")
        type: skillTypeList.flameEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme Fire damage to all enemies."),
            qsTr("EX Elemental spell that has 360 attack power with a 200% damage multiplier.")
        ]
    }
    property Skill freezeMastery: Skill {
        skillID: "Freeze Mastery"
		name: qsTr("Freeze Mastery")
        type: skillTypeList.freezeMastery
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        description: [
            qsTr("Increases the damage and activation speed of ice spells. Required for higher-level ice spells.")
        ]
    }
    property Skill freeze: Skill {
        skillID: "Freeze"
		name: qsTr("Freeze")
        type: skillTypeList.freeze
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Ice damage to a single enemy."),
            qsTr("The spell starts at 300 at Lv. 1 with a 150% damage multiplier, and increases to 400 with a 200% damage multiplier at Lv. 5.")
        ]
    }
    property Skill blizzard: Skill {
        skillID: "Blizzard"
		name: qsTr("Blizzard")
        type: skillTypeList.freeze
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Ice damage to all enemies."),
            qsTr("The attack power of this spells is 240 with a 150% damage multiplier at Lv. 1. At Lv. 5, these spell's attack power is 320 with a 200% damage multiplier.")
        ]
    }
    property Skill freezeVeil: Skill {
        skillID: "Freeze Veil"
		name: qsTr("Freeze Veil")
        type: skillTypeList.freeze
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Places a Freeze Veil on an ally, which automatically counterattacks enemies who attack that ally with Ice damage."),
            qsTr("Just as powerful as single target elemental spell, this has 300 attack power with a 150% damage multiplier at Lv. 1, rising to 400 attack power with a 200% damage multiplier at Lv. 5."),
            qsTr("Veil status last for 10 turns."),
            qsTr("The veil activates when the affected takes a physical melee attack. It will activate as many times as you're attacked. It will not fire off on things like Breath or other magic, or projectile attacks like 30mm Cannon."),
            qsTr("The Veil's counter attack has high accuracy."),
            qsTr("This spell is not affected by EX, but affected by Princess' Angelica Cage.")
        ]
    }
    property Skill theCreationOfAbsoluteZero: Skill {
        skillID: "The Creation of Absolute Zero"
		name: qsTr("The Creation of Absolute Zero")
        type: skillTypeList.freezeEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme Ice damage to all enemies."),
            qsTr("EX Elemental spell that has 360 attack power with a 200% damage multiplier.")
        ]
    }
    property Skill shockMastery: Skill {
        skillID: "Shock Mastery"
		name: qsTr("Shock Mastery")
        type: skillTypeList.shockMastery
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        description: [
            qsTr("Increases the damage and activation speed of lightning spells. Required for higher-level ice spells.")
        ]
    }
    property Skill shock: Skill {
        skillID: "Shock"
		name: qsTr("Shock")
        type: skillTypeList.shock
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Lightning damage to a single enemy."),
            qsTr("The spell starts at 300 at Lv. 1 with a 150% damage multiplier, and increases to 400 with a 200% damage multiplier at Lv. 5.")
        ]
    }
    property Skill boltStorm: Skill {
        skillID: "Bolt Storm"
		name: qsTr("Bolt Storm")
        type: skillTypeList.shock
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Lightning damage to all enemies."),
            qsTr("The attack power of this spells is 240 with a 150% damage multiplier at Lv. 1. At Lv. 5, these spell's attack power is 320 with a 200% damage multiplier.")
        ]
    }
    property Skill shockVeil: Skill {
        skillID: "Shock Veil"
		name: qsTr("Shock Veil")
        type: skillTypeList.shock
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Places a Shock Veil on an ally, which automatically counterattacks enemies who attack that ally with Lightning damage."),
            qsTr("Just as powerful as single target elemental spell, this has 300 attack power with a 150% damage multiplier at Lv. 1, rising to 400 attack power with a 200% damage multiplier at Lv. 5."),
            qsTr("Veil status last for 10 turns."),
            qsTr("The veil activates when the affected takes a physical melee attack. It will activate as many times as you're attacked. It will not fire off on things like Breath or other magic, or projectile attacks like 30mm Cannon."),
            qsTr("The Veil's counter attack has high accuracy."),
            qsTr("This spell is not affected by EX, but affected by Princess' Angelica Cage.")
        ]
    }
    property Skill theCreationOfADivineRoar: Skill {
        skillID: "The Creation of a Divine Roar"
		name: qsTr("The Creation of a Divine Roar")
        type: skillTypeList.shockEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme Lightning damage to all enemies."),
            qsTr("EX Elemental spell that has 360 attack power with a 200% damage multiplier.")
        ]
    }
    property Skill manaMastery: Skill {
        skillID: "Mana Mastery"
		name: qsTr("Mana Mastery")
        type: skillTypeList.manaMastery
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        description: [
            qsTr("Increases the damage and activation speed of mana spells. Required for higher-level mana spells.")
        ]
    }
    property Skill manaBullet: Skill {
        skillID: "Mana Bullet"
		name: qsTr("Mana Bullet")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Non-elemental damage to a single enemy."),
            qsTr("Mana Bullet has an attack power of 270 with a 150% damage multiplier at Lv. 1. At Lv. 5, its attack power is 360 with a 200% damage multiplier.")
        ]
    }
    property Skill heavensPress: Skill {
        skillID: "Heaven's Press"
		name: qsTr("Heaven's Press")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(2, 4),
            Qt.point(3, 5),
            Qt.point(4, 6),
            Qt.point(5, 7)
        ]
        description: [
            qsTr("Non-elemental damage to all enemies."),
            qsTr("220 attack power with a 150% damage multiplier at Lv. 1. At Lv. 5, Heaven's Press has 320 attack power with a 200% damage multiplier.")
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
        manaCost: [
            Qt.point(1, 0)
        ]
        description: [
            qsTr("Heals the Mage's own Mana by a small amount."),
            qsTr("Recovers 3 MN on its own, 6 with EX. This can't be used out of battle.")
        ]
    }
    property Skill magesConcentration: Skill {
        skillID: "Mage's Concentration"
		name: qsTr("Mage's Concentration")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 5)]
        }
        manaCost: [
            Qt.point(1, 8)
        ]
        description: [
            qsTr("Increases the power of the spell you cast next turn."),
            qsTr("Whatever spell used next turn, its damage will be multiplied by 2.5."),
            qsTr("A Mage's Concentrate with an EX Spell will not actually do much more damage with a Princess' Angelica Cage attached.")
        ]
    }
    property Skill planetMastery: Skill {
        skillID: "Planet Mastery"
		name: qsTr("Planet Mastery")
        type: skillTypeList.manaMastery
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(5, 2)]
        }
        description: [
            qsTr("Increases the activation speed of space spells. Required for higher-level space spells.")
        ]
    }
    property Skill shieldCraft: Skill {
        skillID: "Shield Craft"
		name: qsTr("Shield Craft")
        type: skillTypeList.mana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 4),
            Qt.point(3, 5),
            Qt.point(5, 6),
            Qt.point(7, 7),
            Qt.point(9, 8)
        ]
        description: [
            qsTr("Nullifies up to a certain amount of damage the Mage takes."),
            qsTr("LF shielding starts at 30 (Lv. 1), and rises to 100 at Lv. 10. Damage in excess of what the shield can take will go to the Mage."),
            qsTr("Casting it again while it is still up will reset the damage it can take.")
        ]
    }
    property Skill theEndOfWorld: Skill {
        skillID: "The End of World"
		name: qsTr("The End of World")
        type: skillTypeList.manaEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme non-elemental damage to all enemies, with a chance to inflict Skill Seal."),
            qsTr("Has 325 attack power with a 200% damage multiplier.")
        ]
    }
    property Skill portalJump: Skill {
        skillID: "Portal Jump"
		name: qsTr("Portal Jump")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 7),
            Qt.point(3, 6),
            Qt.point(4, 5),
            Qt.point(5, 2)
        ]
        description: [
            qsTr("Teleports party to the last portal used.")
        ]
    }
    property Skill exitDungeon: Skill {
        skillID: "Exit"
		name: qsTr("Exit")
        type: skillTypeList.etc
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 8),
            Qt.point(2, 7),
            Qt.point(3, 6),
            Qt.point(4, 5),
            Qt.point(5, 2)
        ]
        description: [
            qsTr("Teleports party to the exit of the dungeon you're currently in.")
        ]
    }
    property Skill pharmaceuticals: Skill {
        skillID: "Pharmaceuticals"
		name: qsTr("Pharmaceuticals")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            max: 5
        }
        description: [
            qsTr("Improves the effect of recovery items."),
            qsTr("Lv. 1 starts at +50%, and rises at +10% per level until Lv. 5, where the total effectiveness jumps up to +100%."),
            qsTr("Only during battle, and only for items the Mage uses themself, the effectiveness of items used will be increased."),
            qsTr("Examples: Heal Aeros will heal 100 LF at Lv. 5, and a bottle of Mana Water will recover 30 MN.")
        ]
    }
    property Skill discerningJudgment: Skill {
        skillID: "Discerning Judgment"
		name: qsTr("Discerning Judgment")
        type: skillTypeList.special
        skillLevel: SkillLevel {
            max: 5
        }
        description: [
            qsTr("Increases drop acquisition rate."),
            qsTr("+5% at Lv. 1, +5% per level, maxing at +25%."),
            qsTr("Some meat drops require you to not use magic or to use a certain type of elemental damage.")
        ]
    }
}
