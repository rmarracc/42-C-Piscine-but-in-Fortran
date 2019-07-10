MODULE ft
	CONTAINS
		SUBROUTINE ft_ultimate_div_mod(i, j)
			INTEGER, POINTER, INTENT(inout) :: i
			INTEGER, POINTER, INTENT(inout) :: j
			INTEGER, TARGET :: t
			INTEGER, TARGET :: g
			SAVE t, g
			t = i / j
			g = MOD(i, j)
			i => t
			j => g
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	INTEGER, POINTER :: p
	INTEGER, POINTER :: d
	INTEGER, TARGET :: t
	INTEGER, TARGET :: g
	t = 69
	g = 10
	p => t
	d => g
	CALL ft_ultimate_div_mod(p, d)
	PRINT *, p, d
END PROGRAM
