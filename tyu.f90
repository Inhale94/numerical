parameter(n = 100, m = 3)
real x(n*m), y(n*m), z(n*m), s(3)
open (10, FILE='lagrange3.dat')
open (20, FILE='lagrange33.dat')
a=-5.0
b=5.0
h=(b-a)/m
d=h/n

do i=1, m*n
    x(i)=a+(i-1)*d
    y(i)=sin(x(i))
write (20,*) x(i), y(i)
enddo
close(20)


s(1)=((-3)*y(1)+4*y(2)-y(3))/(2*h)
s(2)=(y(3)-y(1))/(2*h)
s(3)=(y(1)-4*y(2)-3*y(3))/(2*h)
do i=1,3
x(i)=a+(i-1)*h
write (10,*) x(i), s(i)
enddo



end
