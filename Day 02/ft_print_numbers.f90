SUBROUTINE ft_print_numbers()
	CHARACTER(14) :: c
	c = '("0123456789")'
	PRINT c
END SUBROUTINE
PROGRAM prog
	CALL ft_print_numbers()
END PROGRAM 
