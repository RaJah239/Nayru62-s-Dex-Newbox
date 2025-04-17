ItemPocketNames:
; entries correspond to item type constants
	table_width 2, ItemPocketNames
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Fruit
	dw .Battle
	dw .Medicine
	dw .Loot
	assert_table_length NUM_ITEM_TYPES

.Item: db "ITEM POCKET@"
.Key:  db "KEY POCKET@"
.Ball: db "BALL POCKET@"
.TM:   db "TM/HM POCKET@"
.Fruit: db "FRUIT POCKET@"
.Battle: db "BATTLE POCKET@"
.Medicine: db "MED POCKET@"
.Loot: db "LOOT POCKET@"
