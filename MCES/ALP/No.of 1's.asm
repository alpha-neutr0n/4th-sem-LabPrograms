;THIS CODE CALCULATES THE NUMBER OF 1's AND
;CHECK IF THE NUMBER IS ODD OR EVEN.
;R2 HOLDS THE NUMBER OF 1's
;R5 IS 1 IF ODD,ELSE 0.

	AREA RESET,CODE
		ENTRY
		MOV R0,#09
		MOV R1,#00
		MOV R2,#00
		MOVS R4,R0,LSR #01
		MOVCS R5,#01
CONT
		MOVS R0,R0,LSL #01
		ADDCS R2,#01
		ADD R1,#01
		CMP R1,#32
		BNE CONT
STOP B STOP
		END
		