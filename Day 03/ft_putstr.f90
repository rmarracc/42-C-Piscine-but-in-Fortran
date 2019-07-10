MODULE ft
	CONTAINS
		SUBROUTINE ft_putstr(s)
			CHARACTER(:), POINTER, INTENT(inout) :: s
			PRINT *, s
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	CHARACTER(:), POINTER :: p
	CHARACTER(6), TARGET :: i
	p => i
	i = 'Coucou'
	CALL ft_putstr(p)
END PROGRAM
