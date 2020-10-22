implicit real*8(a-h, o-z)
	real*8 mysin

	write(*, *) sin(0.5)

	stop
end

real*8 function mysin(x, eps)
	implicit real*8(a-h, o-z)

	sum = x
	term = 1
	xsq = x*x
	kflag = -1
	k = 2

	do while (abs(term) > eps)
	    kflag = -kflag
	    sum = sum + kflag*term
	    term = term*xsq/float(k)/float(k+1)
	    k = k + 2
    enddo

	mysin = sum

	return
end