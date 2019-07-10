MODULE ft
	CONTAINS
		SUBROUTINE ft_sort_int_tab(i, s)
			INTEGER :: s
			INTEGER, DIMENSION(s), INTENT(inout) :: i
			INTEGER :: j
			INTEGER :: k
			INTEGER :: t
			j = 2
			DO WHILE (j < (s + 1))
				t = i(j)
				k = j - 1
				DO WHILE (k >= 1 .AND. i(k) > t)
					i(k + 1) = i(k)
					k = k - 1
				END DO
				i(k + 1) = t
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
	CALL ft_sort_int_tab(t, 5)
	PRINT *, t
END PROGRAM
