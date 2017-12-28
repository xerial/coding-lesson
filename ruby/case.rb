name = 'cat'
# name = 'dog'
# name = 'sheep'

result = case name
when 'cat' then 
    "猫"
when 'dog' then
    "犬"
else 
    "?"
end    

puts result