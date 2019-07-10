SUBROUTINE ft_is_negative(i)
	INTEGER, INTENT(in) :: i
	CHARACTER(5) :: c
	IF (i < 0) THEN
		c = '("N")'
	ELSE
		c = '("P")'
	END IF
	PRINT c
END SUBROUTINE
PROGRAM prog
	CALL ft_is_negative(-5)
END PROGRAM 
