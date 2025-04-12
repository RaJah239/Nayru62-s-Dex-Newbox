; Total items: 193 (including unused items)
; All item_constants must be in this list

ItemNameOrder:
	table_width 1, ItemNameOrder

; No item
	db NO_ITEM      ; Must be included



; Item Pocket - 25 total
; Forever useful items
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db POKE_DOLL
	db ESCAPE_ROPE
	db EXP_SHARE

; Evolution Items
	db FIRE_STONE
	db WATER_STONE
	db LEAF_STONE
	db THUNDERSTONE
	db DRAGON_SCALE
	db SUN_STONE
	db MOON_STONE

; Boxes
	db NORMAL_BOX
	db GORGEOUS_BOX

; Mail
	db BLUESKY_MAIL
	db EON_MAIL
	db FLOWER_MAIL
	db LITEBLUEMAIL
	db LOVELY_MAIL
	db MIRAGE_MAIL
	db MORPH_MAIL
	db MUSIC_MAIL
	db PORTRAITMAIL
	db SURF_MAIL



; NEXT POCKET
; Ball Pocket - 12 total
; Generic Pokéballs
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db MASTER_BALL 
	db PARK_BALL

; Kurt's Pokéballs
	db FAST_BALL
	db FRIEND_BALL
	db HEAVY_BALL
	db LEVEL_BALL
	db LOVE_BALL
	db LURE_BALL
	db MOON_BALL



; NEXT POCKET
; Medicine Pocket - 35 total
; Best restorative item in the game
	db SACRED_ASH   ; 38

; HP restoring items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE

; Vending Machine Drinks
	db FRESH_WATER
	db SODA_POP
	db LEMONADE

; Other healing related items
	db MOOMOO_MILK
	db RAGECANDYBAR

; Status recovery items
	db ANTIDOTE
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db PARLYZ_HEAL
	db FULL_HEAL

; PP restoring and Revival items
	db ETHER
	db MAX_ETHER
	db ELIXER
	db MAX_ELIXER
	db REVIVE
	db MAX_REVIVE

; Bitter Medicine
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB

; Vitamins
	db RARE_CANDY
	db PP_UP
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db ZINC 
	db CARBOS



; NEXT POCKET
; Fruit Pocket - 17 total
; Berries
	db BERRY
	db BITTER_BERRY
	db BURNT_BERRY
	db GOLD_BERRY
	db ICE_BERRY
	db MINT_BERRY
	db MIRACLEBERRY
	db MYSTERYBERRY
	db PRZCUREBERRY
	db PSNCUREBERRY

; Apricorns
	db BLU_APRICORN
	db BLK_APRICORN
	db GRN_APRICORN
	db PNK_APRICORN
	db RED_APRICORN
	db WHT_APRICORN
	db YLW_APRICORN



; NEXT POCKET
; Battle Pocket - 44 total

; Stat altering Battle Items
	db GUARD_SPEC
	db DIRE_HIT
	db X_ACCURACY
	db X_ATTACK
	db X_DEFEND
	db X_SPECIAL
	db X_SPEED

; Battle related Held Items
	db AMULET_COIN
	db BERRY_JUICE
	db BERSERK_GENE
	db BLACKBELT_I
	db BLACKGLASSES
	db BRIGHTPOWDER
	db CHARCOAL
	db CLEANSE_TAG
	db DRAGON_FANG
	db EVERSTONE
	db FOCUS_BAND
	db HARD_STONE
	db KINGS_ROCK
	db LEFTOVERS
	db LIGHT_BALL
	db LUCKY_EGG
	db LUCKY_PUNCH
	db MAGNET
	db METAL_COAT
	db METAL_POWDER
	db MIRACLE_SEED
	db MYSTIC_WATER
	db NEVERMELTICE
	db PINK_BOW
	db POLKADOT_BOW
	db POISON_BARB
	db QUICK_CLAW
	db SCOPE_LENS
	db SHARP_BEAK
	db SILVERPOWDER
	db SMOKE_BALL
	db SOFT_SAND
	db SPELL_TAG
	db STICK
	db THICK_CLUB
	db TWISTEDSPOON
	db UP_GRADE



; NEXT POCKET
; Loot Items Pocket - 11 total
; Leaves
	db SILVER_LEAF
	db GOLD_LEAF

; Other items
	db TINYMUSHROOM
	db BIG_MUSHROOM
	db PEARL
	db BIG_PEARL
	db STARDUST
	db STAR_PIECE
	db NUGGET
	db BRICK_PIECE
	db SLOWPOKETAIL



; NEXT POCKET
; Key Items Pocket - 21 total
; Permanent Key Items
; Items that are possibly frequently used
	db BICYCLE
	db COIN_CASE
	db BLUE_CARD
	db ITEMFINDER

; Rods
	db OLD_ROD
	db GOOD_ROD
	db SUPER_ROD

; Key Items that are possibly seldom used
	db CLEAR_BELL
	db S_S_TICKET
	db SILVER_WING
	db RAINBOW_WING

; Temporary Key Items
	db BASEMENT_KEY
	db CARD_KEY
	db GS_BALL
	db LOST_ITEM
	db MACHINE_PART
	db MYSTERY_EGG
	db PASS
	db RED_SCALE
	db SECRETPOTION
	db SQUIRTBOTTLE



; UNUSED ITEMS
; Unused Items - 27 total
	db EGG_TICKET
	db POKE_FLUTE
	db TOWN_MAP
	db ITEM_19
	db ITEM_2D
	db ITEM_32
	db ITEM_5A
	db ITEM_64
	db ITEM_78
	db ITEM_87
	db ITEM_88
	db ITEM_8D
	db ITEM_8E
	db ITEM_91
	db ITEM_93
	db ITEM_94
	db ITEM_95
	db ITEM_99
	db ITEM_9A 
	db ITEM_9B
	db ITEM_A2
	db ITEM_AB
	db ITEM_B0
	db ITEM_B3
	db ITEM_BE
	db ITEM_C3
 	db ITEM_DC

	assert_table_length NUM_ITEMS + 1
	db -1 ; end
