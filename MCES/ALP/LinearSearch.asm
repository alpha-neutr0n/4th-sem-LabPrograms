;THIS CODE PERFORMS LINEAR SEARCH
;'R7' GIVE THE NUMBER OFO OCCURRENCES
	
	AREA RESET, CODE, READWRITE
		ENTRY
		LDR R0,=ARR
		MOV R1, #0 ; Loop Iterator
		MOV R7, #0 ; Number Of occurences In The Array
		MOV R4, #4 ;key
CONT
		LDR R3,[R0]
		CMP R3,R4
		BNE SKIP
		ADD R7,#1
SKIP
		ADD R0,#4
		ADD R1,#1
		CMP R1,#10
		BNE CONT
STOP B STOP
ARR DCD 0,5,1,4,6,4,0,8,4,20
	END
