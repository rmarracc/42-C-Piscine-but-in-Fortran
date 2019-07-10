MODULE ft
	CONTAINS
		SUBROUTINE ft_rev_int_tab(i, s)
			INTEGER :: s
			INTEGER, DIMENSION(s), INTENT(inout) :: i
			INTEGER :: j
			INTEGER :: t
			j = 1
			DO WHILE (j < (s + 1) / 2)
				t = i(j)
				i(j) = i(s - j + 1)
				i(s - j + 1) = t
				j = j + 1
			END DO
		END SUBROUTINE
END MODULE
PROGRAM prog
	USE ft
	INTEGER, DIMENSION(5) :: t
	t(1) = 8
	t(2) = -16
	t(3) = 144
	t(4) = 0
	t(5) = -888
	CALL ft_rev_int_tab(t, 5)
	PRINT *, t
END PROGRAM
