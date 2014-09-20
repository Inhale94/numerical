real*8 x,y
x=1
y=2
k=0
do while (x.ne.y)
  x=x/10
  y=y/10
  k=k+1
end  do
 if (x.eq.y) then
  write(*,*) "min poryadok=", -k
end  if

x=1
y=2

l=0
do while (x.ne.y)
  x=x*10
  y=y*10
  l=l+1
end  do
 if (x.eq.y) then
  write(*,*) "max poryadok=", l
end  if


end
