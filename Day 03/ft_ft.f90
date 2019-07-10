MODULE ft
	CONTAINS
		SUBROUTINE ft_ft(i)
			INTEGER, POINTER, INTENT(inout) :: i
			INTEGER, TARGET :: t
			SAVE t
			t = 42
			i => t
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	INTEGER, POINTER :: p
	INTEGER, TARGET :: i
	p => i
	i = 25
	CALL ft_ft(p)
	PRINT *, p, i
END PROGRAM
