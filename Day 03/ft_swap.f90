MODULE ft
	CONTAINS
		SUBROUTINE ft_swap(i, j)
			INTEGER, POINTER, INTENT(inout) :: i
			INTEGER, POINTER, INTENT(inout) :: j
			INTEGER, POINTER :: t
			t = i
			i = j
			j = t
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	INTEGER, POINTER :: p
	INTEGER, POINTER :: d
	INTEGER, TARGET :: i
	INTEGER, TARGET :: j
	p => i
	i = 25
	d => j
	j = 8
	CALL ft_swap(p, d)
	PRINT *, p, d
END PROGRAM
