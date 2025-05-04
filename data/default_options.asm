DefaultOptions:
; wOptions: fast text speed
if DEF(_DEBUG)
; wOptions: instal text speed
	db TEXT_DELAY_NONE
else
	db TEXT_DELAY_FAST
endc
; wSaveFileExists: no
	db FALSE
; wTextboxFrame: frame 1
	db FRAME_1
; wTextboxFlags: use text speed
	db 1 << FAST_TEXT_DELAY_F
; wGBPrinterBrightness: normal
	db GBPRINTER_NORMAL
; wOptions2: trival calls on
	db 0 << TRIVIAL_CALLS

	db $00
	db $00
.End
	assert DefaultOptions.End - DefaultOptions == wOptionsEnd - wOptions
