main:
	addi $t0, $t0, 0 	# t0 starts at 0
	addi $t1, $zero, 16 	# t1 is a constant 16
	addi $t2, $t2, 0 	# t2 is the counter (i)
	loop:
	beq $t2, $t1, end 	# if t2 == 16 end
	add $t0, $t0, 2 	# add 2 to t0
	add $t2, $t2, 1 	# add 1 to t2	
	j loop 			# jump back to the top
	end:
	li $v0, 10
	syscall
