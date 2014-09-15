main:
	addi $t0, $t0, 0 	# t0 starts at 0
	addi $t1, $zero, 16 	# t1 is a constant 16
	addi $t2, $t2, 0 	# t2 is the counter (i)
	addi $t3, $zero, 4 	#t3 is a constant 4
	lui $s0, 0x1001 	#load address 0x10010000 as start of data memory 
	loop:
	beq $t2, $t1, end 	# if t2 == 16 end
	add $t0, $t0, 2 	# add 2 to t0
	sw $t0, ($s0)		# store $s0
	add $s0, $s0, 4		# add 4 to $s0
	add $t2, $t2, 1 	# add 1 to t2	
	j loop 			# jump back to the top
	end:
	li $v0, 10
	syscall
