CheckForHiddenItems:
; Checks to see if there are hidden items on the screen that have not yet been found.  If it finds one, returns carry.
	call GetMapScriptsBank
	ld [wCurMapScriptBank], a
; Get the coordinate of the bottom right corner of the screen, and load it in wBottomRightYCoord/wBottomRightXCoord.
	ld a, [wXCoord]
	add SCREEN_WIDTH / 4
	ld [wBottomRightXCoord], a
	ld a, [wYCoord]
	add SCREEN_HEIGHT / 4
	ld [wBottomRightYCoord], a
; Get the pointer for the first bg_event in the map...
	ld hl, wCurMapBGEventsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; ... before even checking to see if there are any BG events on this map.
	ld a, [wCurMapBGEventCount]
	and a
	jr z, .nobgeventitems
; For i = 1:wCurMapBGEventCount...
.loop
; Store the counter in wRemainingBGEventCount, and store the bg_event pointer in the stack.
	ld [wRemainingBGEventCount], a
	push hl
; Get the Y coordinate of the BG event.
	call .GetFarByte
	ld e, a
; Is the Y coordinate of the BG event on the screen?  If not, go to the next BG event.
	ld a, [wBottomRightYCoord]
	sub e
	jr c, .next
	cp SCREEN_HEIGHT / 2
	jr nc, .next
; Is the X coordinate of the BG event on the screen?  If not, go to the next BG event.
	call .GetFarByte
	ld d, a
	ld a, [wBottomRightXCoord]
	sub d
	jr c, .next
	cp SCREEN_WIDTH / 2
	jr nc, .next
; Is this BG event a hidden item?  If not, go to the next BG event.
	call .GetFarByte
	cp BGEVENT_ITEM
	jr nz, .next
; Has this item already been found?  If not, set off the Itemfinder.
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld d, h
	ld e, l
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .itemnearby

.next
; Restore the bg_event pointer and increment it by the length of a bg_event.
	pop hl
	ld bc, BG_EVENT_SIZE
	add hl, bc
; Restore the BG event counter and decrement it.  If it hits zero, there are no hidden items in range.
	ld a, [wRemainingBGEventCount]
	dec a
	jr nz, .loop

.nobgeventitems
	xor a
	ret

.itemnearby
	pop hl
	scf
	ret

.GetFarByte:
	ld a, [wCurMapScriptBank]
	call GetFarByte
	inc hl
	ret

RockItemEncounter:
	ld hl, .RockItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.RockItems:
	db 1, MAX_REVIVE
	db 2, THICK_CLUB
	db 4, NUGGET
	db 6, STAR_PIECE
	db 12, BIG_PEARL
	db 18, ETHER
	db 24, HARD_STONE
	db 24, SOFT_SAND
	db 48, PEARL
	db 64, BRICK_PIECE
	db -1

HeadbuttItemEncounter:
	ld hl, .HeadbuttItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.HeadbuttItems:
	db 1, MIRACLE_SEED
	db 1, GOLD_BERRY
	db 1, MIRACLEBERRY
	db 2, MYSTERYBERRY
	db 2, GOLD_LEAF
	db 2, SILVER_LEAF
	db 3, BERRY
	db 3, BITTER_BERRY
	db 3, MINT_BERRY
	db 3, ICE_BERRY
	db 3, BURNT_BERRY
	db 3, PRZCUREBERRY
	db 3, PSNCUREBERRY
	db 3, RED_APRICORN
	db 3, BLU_APRICORN
	db 3, YLW_APRICORN
	db 3, GRN_APRICORN
	db 3, WHT_APRICORN
	db 3, BLK_APRICORN
	db 3, PNK_APRICORN
	db -1

FishingtItemEncounter:
	ld hl, .FishingItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.FishingItems:
	db 5, MYSTIC_WATER
	db 5, DRAGON_FANG
	db 5, DRAGON_SCALE
	db 25, STARDUST
	db 10, STAR_PIECE
	db 25, PEARL
	db 10, BIG_PEARL
	db -1
