RECURSIVE SUBROUTINE ft_putnbr(i)
	INTEGER, INTENT(in) :: i
	INTEGER :: j
	CHARACTER(5) :: c
	c = '(1I1)'
	j = i
	IF (i < 0) THEN
		WRITE(*, fmt='("-")', advance="no")
		j = -i
	END IF
	IF (j > 9) THEN
		CALL ft_putnbr(j / 10)
		CALL ft_putnbr(MOD(j, 10))
	ELSE
		WRITE(*, fmt=c, advance="no"), j
	END IF
END SUBROUTINE
PROGRAM prog
	CALL ft_putnbr(-522368)
END PROGRAM 
