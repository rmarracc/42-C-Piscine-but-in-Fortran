SUBROUTINE ft_print_comb2()
	INTEGER :: i
	INTEGER :: j
	CHARACTER(21) :: c
	i = 0
	DO WHILE (i <= 98)
		j = i + 1
		DO WHILE (j <= 99)
		
			c = '(1I1,1I1," ",1I1,1I1)'
			WRITE(*, fmt=c, advance="no"), i/10, MOD(i,10), j/10, MOD(j,10)
			IF (i < 98) THEN
				WRITE(*, fmt='(", ")', advance="no")
			END IF
			j = j + 1
		END DO
		i = i + 1
	END DO
END SUBROUTINE
PROGRAM prog
	CALL ft_print_comb2()
END PROGRAM 
