parameter(n = 100, m = 5)
real x(n*m), y(n*m), z(n*m)
open (10, FILE='lagrange.dat')
a=-10.0
b=10.0
h=(b-a)/m
d=h/n

do i=1, m
    x(i)=a+(i-1)*h
    y(i)=1/(x(i)**2+25)
enddo

do i=1, m*n
  s=0.0
    z(i)=a+(i-1)*d
    do j=1, m
      p=1.0
        do k=1, m
            if(j.ne.k) then
                p=p*(z(i)-x(k))/(x(j)-x(k))
            endif
        enddo
        s=s+y(j)*p
    enddo
    write (10,*) z(i), s
enddo
close (10)
end
