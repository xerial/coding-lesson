arr = ['apple', 'banana', 'cat', 'dog', 'egg']

puts arr[0]
puts arr[1]
puts arr.length

arr.each {|x|
  puts "Hello #{x}"
}

arr.each_with_index {|x, i| 
  puts "#{i}: #{x}"
}
