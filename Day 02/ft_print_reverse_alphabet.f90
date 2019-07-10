SUBROUTINE ft_print_reverse_alphabet()
	CHARACTER(30) :: c
	c = '("zyxwvutsrqponmlkjihgfedcba")'
	PRINT c
END SUBROUTINE
PROGRAM prog
	CALL ft_print_reverse_alphabet()
END PROGRAM 
