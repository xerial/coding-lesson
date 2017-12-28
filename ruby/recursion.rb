def fac(n)
  if(n == 0)
    1
  else
    n * fac(n-1)
  end
end    

puts fac(4)
puts fac(10)
