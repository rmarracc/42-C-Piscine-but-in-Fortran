SUBROUTINE ft_print_alphabet()
	CHARACTER(30) :: c
	c = '("abcdefghijklmnopqrstuvwxyz")'
	PRINT c
END SUBROUTINE
PROGRAM prog
	CALL ft_print_alphabet()
END PROGRAM 
