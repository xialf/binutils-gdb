	.SPACE $PRIVATE$
	.SUBSPA $DATA$,QUAD=1,ALIGN=8,ACCESS=31
	.SUBSPA $BSS$,QUAD=1,ALIGN=8,ACCESS=31,ZERO,SORT=82
	.SPACE $TEXT$
	.SUBSPA $LIT$,QUAD=0,ALIGN=8,ACCESS=44
	.SUBSPA $CODE$,QUAD=0,ALIGN=8,ACCESS=44,CODE_ONLY

	.SPACE $TEXT$
	.SUBSPA $CODE$

	.align 4
; We could/should test some of the corner cases for register and 
; immediate fields.  We should also check the assorted field
; selectors to make sure they're handled correctly.
spop_tests: 
	spop0,4,5
	spop0,4,115
	spop0,4,5,n
	spop0,4,115,n
	spop1,4,5 %r5
	spop1,4,115 %r5
	spop1,4,5,n %r5
	spop1,4,115,n %r5
	spop2,4,5 %r5
	spop2,4,115 %r5
	spop2,4,5,n %r5
	spop2,4,115,n %r5
	spop3,4,5 %r5,%r6
	spop3,4,115 %r5,%r6
	spop3,4,5,n %r5,%r6
	spop3,4,115,n %r5,%r6

; Gas fucks this up...  Thinks it has the expression 5 mod r5.
;	spop1,4,5 %r5
