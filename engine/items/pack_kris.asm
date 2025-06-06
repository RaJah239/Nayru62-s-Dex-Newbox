DrawKrisPackGFX:
	ld hl, PackFGFXPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld hl, vTiles2 tile $50
	lb bc, BANK(PackFGFX), 15
	call Request2bpp
	ret

PackFGFXPointers:
	dw PackFGFX + (15 tiles) * 1 ; ITEM_POCKET
	dw PackFGFX + (15 tiles) * 4 ; BALL_POCKET
	dw PackFGFX + (15 tiles) * 0 ; KEY_ITEM_POCKET
	dw PackFGFX + (15 tiles) * 3 ; TM_HM_POCKET
	dw PackFGFX + (15 tiles) * 5 ; FRUIT_POCKET
	dw PackFGFX + (15 tiles) * 2 ; BATTLE_POCKET
	dw PackFGFX + (15 tiles) * 6 ; MEDICINE_POCKET
	dw PackFGFX + (15 tiles) * 7 ; LOOT_POCKET

PackFGFX:
INCBIN "gfx/pack/pack_f.2bpp"
