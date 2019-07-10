MODULE ft
	CONTAINS
		SUBROUTINE ft_div_mod(a, b, i, j)
			INTEGER, INTENT(in) :: a
			INTEGER, INTENT(in) :: b
			INTEGER, POINTER, INTENT(inout) :: i
			INTEGER, POINTER, INTENT(inout) :: j
			INTEGER, TARGET :: t
			INTEGER, TARGET :: g
			SAVE t, g
			t = a / b
			g = MOD(a, b)
			i => t
			j => g
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	INTEGER, POINTER :: p
	INTEGER, POINTER :: d
	CALL ft_div_mod(48, 10, p, d)
	PRINT *, p, d
END PROGRAM
