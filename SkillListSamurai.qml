import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill katanaMastery: Skill {
        skillID: "Katana Mastery"
		name: qsTr("Katana Mastery")
        type: skillTypeList.katanaMastery
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        description: [
            qsTr("Raises the ATK of equipped katana. Required for higher-level katana skills."),
            qsTr("+10% at Lv. 1, to +30% at Lv. 10, so you gain +2% each additional point (except the Lv. 9 to Lv. 10 jump has a higher return like most skills at +4%)."),
            qsTr("Regular swords are not affected by this."),
        ]
    }
    property Skill zambaSwitch: Skill {
        skillID: "Zamba Switch"
        name: qsTr("Zamba Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 2)
        ]
        description: [
            qsTr("Switches to Zamba Stance, which increases attack power and allows the Samurai to use Zamba skills."),
            qsTr("Regardless of what weapon is equipped, the Samurai's attack power increases +10% at Lv. 1 and +30% at Lv. 5 in Zamba Stance, making each level up a +5% increase in attack power."),
        ]
    }
    property Skill tateIchimonji: Skill {
        skillID: "Tate-Ichimonji"
		name: qsTr("Tate-Ichimonji")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Medium damage to one enemy."),
            qsTr("Damage is increased by 130% at Lv. 1 and 180% at max level (+5% per level up, with the last giving +10%)."),
            qsTr("The original Japanese name describes the kanji character for one (Ichimonji), which is essentially a dash, which is stood up (Tate). Thus, a character that looks like \"-\" becomes one that looks like \"|\"."),
        ]
    }
    property Skill rairai: Skill {
        skillID: "Rai-Rai"
		name: qsTr("Rai-Rai")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Lightning damage to one enemy."),
            qsTr("Deals lightning damage, not slashing damage, from 120% to 150%."),
        ]
    }
    property Skill todoroki: Skill {
        skillID: "Todoroki"
		name: qsTr("Todoroki")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Extreme damage and Stun to one enemy. The Samurai loses use (and the ATK) of his equipped weapon for three turns."),
            qsTr("Deals 160% damage at Lv. 1 to 230% damage at max, but the attack power from the weapon will be 0 for the remainder of the current turn and the next three turns."),
        ]
    }
    property Skill sakabaUchi: Skill {
        skillID: "Sakaba-Uchi"
		name: qsTr("Sakaba-Uchi")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Small damage to one enemy and a small chance of inflicting Sleep."),
            qsTr("Deals 120% damage at Lv. 1 to 150% damage at Lv. 10 and has a 25% at Lv. 1 to 45% at Lv. 10 chance to inflict Sleep. This technique deals blunt damage, not slashing damage."),
            qsTr("The original Japanese name is an easy way to express the act of attacking using the back of your blade."),
        ]
    }
    property Skill futatsuTsubame: Skill {
        skillID: "Futatsu Tsubame"
		name: qsTr("Futatsu Tsubame")
        type: skillTypeList.katanaEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage to a single enemy, with a high chance of inflicting Bleeding."),
            qsTr("Zamba's EX skill. 160% damage with a 75% chance of Bleeding."),
            qsTr("Bleeding will siphon out 3% of the afflicted's LF per turn."),
        ]
    }
    property Skill iaiSwitch: Skill {
        skillID: "Iai Switch"
		name: qsTr("Iai Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 2)
        ]
        description: [
            qsTr("Switches to Iai Stance, which increases speed and allows the Samurai to use Iai skills."),
            qsTr("While in Iai, the Samurai's speed will increase by +10% at Lv. 1 and +30% at Lv. 5."),
        ]
    }
    property Skill senteDachi: Skill {
        skillID: "Sente-Dachi"
		name: qsTr("Sente-Dachi")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Medium damage to an enemy. Always goes first."),
            qsTr("Deals 130% damage at Lv. 1 and 180% damage at max level."),
        ]
    }
    property Skill fubuki: Skill {
        skillID: "Fubuki"
		name: qsTr("Fubuki")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Ice elemental damage to an enemy."),
            qsTr("Deals ice damage, not slashing damage, from 120% at Lv.1 to 150% at Lv. 10."),
        ]
    }
    property Skill zeppaUchi: Skill {
        skillID: "Zeppa-Uchi"
		name: qsTr("Zeppa-Uchi")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(6, 4)
        ]
        description: [
            qsTr("Medium damage and a small chance of inflicting Skill seal to an enemy."),
            qsTr("Damage progression is 120% at Lv. 1 to 150% at Lv. 10, with a chance of Skill Seal (25% at Lv. 1, 45% at Lv. 10)."),
            qsTr("Skill Seal lasts for around three turns."),
        ]
    }
    property Skill kubiOtoshi: Skill {
        skillID: "Kubi-Otoshi"
		name: qsTr("Kubi-Otoshi")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 5)
        ]
        description: [
            qsTr("Medium damage and a high chance of instant death to an enemy."),
            qsTr("The damage is 130% at Lv. 1 and 180% at Lv. 10 and has a chance of instant death (30% at Lv. 1, 75% at Lv. 10)."),
            qsTr("Bosses are highly resistant to instant death."),
            qsTr("The original Japanese is composed of two characters: the one for neck, and the one for falling. The imagery is that someone's just been decapitated."),
        ]
    }
    property Skill rokuShakuKubiOtoshi: Skill {
        skillID: "Roku-Shaku Kubi-Otoshi"
		name: qsTr("Roku-Shaku Kubi-Otoshi")
        type: skillTypeList.katanaEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Instant death or huge damage to all enemies."),
            qsTr("Iai's EX skill. Attacks all enemies at 150% damage (then EX on top of that), and instantly kills them."),
            qsTr("Bosses are highly resistant to instant death."),
            qsTr("The original Japanese name has Kubi-Otoshi in it which is explained there. Roku-Shaku might refer to a measure of distance (a shaku is an old Japanese measurement of length, formally defined as 10/33 of a meter in modern times), perhaps alluding to the large amount of distance the sword strike is covering."),
        ]
    }
    property Skill muteSwitch: Skill {
        skillID: "Mu-te Switch"
		name: qsTr("Mu-te Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 1),
            Qt.point(6, 2)
        ]
        description: [
            qsTr("Switches to Unarmed Stance, which adds a small chance of instant death to regular attacks and allows the Samurai to use Unarmed skills. The Samurai's weapon ATK will be replaced with an ATK bonus based on this skill's level."),
            qsTr("The bonus starts at +100% at Lv. 1, rises by +10% up to Lv. 8, then sees two massive increases at +25% and +40% for the last two levels, ending its bonus at +235%. As well, the Samurai's regular attacks will have a chance of instantly killing your target (15% at Lv. 1, 25% at Lv. 10)."),
            qsTr("Despite being described as a POW bonus, it doesn't apply to defense and the Samurai don't take any less damage."),
        ]
    }
    property Skill myouou: Skill {
        skillID: "Myouou"
		name: qsTr("Myouou")
        type: skillTypeList.unarmed
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Fire damage to an enemy."),
            qsTr("130% damage at Lv. 1, 180% damage at Lv. 10."),
            qsTr("In Vajrayana Buddhism, a Wisdom King is the third type of deity after buddhas and Bodhisattvas."),
        ]
    }
    property Skill zangekiUnshin: Skill {
        skillID: "Zangeki-Unshin"
		name: qsTr("Zangeki-Unshin")
        type: skillTypeList.unarmed
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(4, 4)
        ]
        description: [
            qsTr("Nullifies a Slashing attack and retaliates with large damage and chance of instant death."),
            qsTr("When hit with a Slashing damage attack, the Samurai will negate the damage entirely and respond with a powerful counter attack. Damage starts at 150% at Lv. 1, but rises rapidly to 300% at Lv. 5. Also comes with at 25% chance of instant death."),
            qsTr("Unlike the Mage's Veil spells, this only fires off once in a round and won't go off if the attack misses altogether."),
        ]
    }
    property Skill kaigekiUnshin: Skill {
        skillID: "Kaigeki-Unshin"
		name: qsTr("Kaigeki-Unshin")
        type: skillTypeList.unarmed
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(4, 4)
        ]
        description: [
            qsTr("Nullifies a Blunt attack and retaliates with large damage and chance of instant death."),
            qsTr("When hit with a Blunt damage attack, the Samurai will negate the damage entirely and respond with a powerful counter attack. Damage starts at 150% at Lv. 1, but rises rapidly to 300% at Lv. 5. Also comes with at 25% chance of instant death."),
            qsTr("Unlike the Mage's Veil spells, this only fires off once in a round and won't go off if the attack misses altogether."),
        ]
    }
    property Skill totsugekiUnshin: Skill {
        skillID: "Totsugeki-Unshin"
		name: qsTr("Totsugeki-Unshin")
        type: skillTypeList.unarmed
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2, 1)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(4, 4)
        ]
        description: [
            qsTr("Nullifies a Piercing attack and retaliates with large damage and chance of instant death."),
            qsTr("When hit with a Piercing damage attack, the Samurai will negate the damage entirely and respond with a powerful counter attack. Damage starts at 150% at Lv. 1, but rises rapidly to 300% at Lv. 5. Also comes with at 25% chance of instant death."),
            qsTr("Unlike the Mage's Veil spells, this only fires off once in a round and won't go off if the attack misses altogether."),
        ]
    }
    property Skill asyura: Skill {
        skillID: "Asyura"
		name: qsTr("Asyura")
        type: skillTypeList.unarmedEx
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        description: [
            qsTr("Extreme damage and Stun to a single enemy."),
            qsTr("Unarmed's EX skill. 200% damage, and 100% Stun effect."),
            qsTr("The description says it hits 6 times, but damage is dealt as one lump sum."),
        ]
    }
    property Skill yoroiDooshi: Skill {
        skillID: "Yoroi-Dooshi"
		name: qsTr("Yoroi-Dooshi")
        type: skillTypeList.unarmed
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 2),
            Qt.point(6, 3)
        ]
        description: [
            qsTr("Medium damage to an enemy."),
            qsTr("130% damage at Lv. 1, 165% damage at Lv. 10."),
            qsTr("In Japanese, Yoroi-Dooshi refers to a specific type of tanto (knife) which, predictably enough, was meant to bust through armor."),
        ]
    }
    property Skill rentan: Skill {
        skillID: "Rentan"
		name: qsTr("Rentan")
        type: skillTypeList.cure
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("Recovers a medium amount of the Samurai's health."),
            qsTr("Heal progression from Lv. 1 to Lv. 5: 24, 36, 60, 96, 144. A bonus of (INT / 5) will be amount to the amount healed."),
        ]
    }
    property Skill nukigake: Skill {
        skillID: "Nuki-Gake"
		name: qsTr("Nuki-Gake")
        type: skillTypeList.katana
        skillLevel: SkillLevel {
            spCost: [Qt.point(8, 2)]
        }
        manaCost: [
            Qt.point(1, 3),
            Qt.point(7, 4)
        ]
        description: [
            qsTr("Medium damage to a single enemy. Can be used without stance, or in Zamba or Iai Stance."),
            qsTr("130% damage at Lv. 1, 165% damage at Lv. 10."),
        ]
    }
    property Skill shishiFunjinNoSeme: Skill {
        skillID: "Shishi Funjin no Seme"
		name: qsTr("Shishi Funjin no Seme")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 5)
        ]
        description: [
            qsTr("Increases the Samurai's ATK by a small amount each turn that passes."),
            qsTr("The bonus is around 1% to 3% per turn. The effect lasts for 30 turns."),
            qsTr("Cancels out negative attack power dehancements."),
        ]
    }
    property Skill tettouTetsubiNoMamori: Skill {
        skillID: "Tettou Tetsubi no Mamori"
		name: qsTr("Tettou Tetsubi no Mamori")
        type: skillTypeList.special2
        skillLevel: SkillLevel {
            max: 5
            spCost: [Qt.point(1, 2), Qt.point(2,1)]
        }
        manaCost: [
            Qt.point(1, 5)
        ]
        description: [
            qsTr("Increases the Samurai's DEF by a small amount each turn that passes."),
            qsTr("The bonus is around 1% to 2% per turn. The effect lasts for 30 turns."),
            qsTr("Cancels out negative defense dehancements."),
        ]
    }
    property Skill musouSwitch: Skill {
        skillID: "Musou Switch"
		name: qsTr("Musou Switch")
        type: skillTypeList.switchSkill
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 3)]
        }
        manaCost: [
            Qt.point(1, 5)
        ]
        description: [
            qsTr("Switches to Musou Stance, where the Samurai can use skills from all styles (without those styles' bonuses). The Samurai is forcibly withdrawn from this stance if he has 90% or less of his Max LF."),
            qsTr("The only skill that cannot be used in Musou Stance is Yoroi-Dooshi."),
            qsTr("If the Samurai drop under 90% and get healed before the turn end, they will stay in Musou."),
            qsTr("Musou Stance ignores resistance and the Samurai's resistance for status ailments increases by perhaps 2 times."),
        ]
    }
    property Skill jinkaNoReact: Skill {
        skillID: "Jinka no React"
		name: qsTr("Jinka no React")
        type: skillTypeList.react
        skillLevel: SkillLevel {
            max: 1
            spCost: [Qt.point(1, 2)]
        }
        manaCost: [
            Qt.point(1, 4)
        ]
        description: [
            qsTr("The React status lasts for 5 turns. While the React is active, the Samurai gains an extra turn if he is hit with any single attack that does more than around 30% of this Max LF."),
            qsTr("The react will also go off on the damage taken from Curse. It's also been known to go off even while Charmed."),
        ]
    }
    property Skill oniNoGyousou: Skill {
        skillID: "Oni no Gyousou"
		name: qsTr("Oni no Gyousou")
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
            qsTr("Chance to ignore random encounters that are lower in level than the Samurai. Does not prevent lucrative Flower Seed encounters."),
            qsTr("At Lv. 5, encounters of a lower level than the party's average level will be completely ignored"),
            qsTr("Demonic Countenance lasts for 140 steps at Lv. 5."),
            qsTr("Has a mean-eye icon in the status screen."),
        ]
    }
}
