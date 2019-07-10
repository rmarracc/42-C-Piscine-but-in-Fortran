SUBROUTINE ft_print_comb()
	INTEGER :: i
	INTEGER :: j
	INTEGER :: k
	CHARACTER(13) :: c
	i = 0
	DO WHILE (i <= 9)
		j = i + 1
		DO WHILE (j <= 9)
			k = j + 1
			DO WHILE (k <= 9)
				c = '(1I1,1I1,1I1)'
				WRITE(*, fmt=c, advance="no"), i, j, k
				IF (i < 7) THEN
					WRITE(*, fmt='(", ")', advance="no")
				END IF
				k = k + 1
			END DO
			j = j + 1
		END DO
		i = i + 1
	END DO
END SUBROUTINE
PROGRAM prog
	CALL ft_print_comb()
END PROGRAM 
