parameter(n = 100, m = 10)
dimension x(n*m), y(n*m), d(n*m), p(n*m), r(n*m)
open (10, FILE='lagrange44.dat')
open (30, FILE='lagrange4.dat')
a=-5.0
b=5.0
h=(b-a)/(m*n)
do i=1,m*n
  x(i)=a+(i-1)*h
  y(i)=exp(sin(x(i)))
  enddo

d(1)=1
do i=2, m*n-1
  d(i)=(y(i+1)-y(i-1))/(2*h)
enddo
d(m*n)=5*exp(sin(5.))
do i=2,m*n-1
  r(i)=(d(i+1)-d(i-1))/(2*h)
enddo
do i=3, m*n-2
  
enddo
close(10)


do i=1, (m*n-1)/3
   p(i)=(y(3*i-2)-2*y(3*i-1)+y(3*k))/(h**2)
enddo
do i=1, (m*n-1)/3
write (30,*) x(3*i), p(i)
enddo
close(30)


end
