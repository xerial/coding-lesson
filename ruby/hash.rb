price = {"apple" => 100, "banana" => 50}

puts price["apple"]
puts price["banana"]

price.each {|product,price|
  puts "#{product}: price=#{price}"
}