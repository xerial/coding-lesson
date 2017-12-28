---
layout: default
title: Ruby Introduction
---


# Ruby

ソースコードは[https://github.com/xerial/coding-lesson](https://github.com/xerial/coding-lesson)にあります。

### hello.rb
```ruby
puts "Hello Ruby!"
```

```
$ ruby hello.rb
Hello Ruby
```

## Variable (変数)

変数は値を保存する。

### calc.rb
```ruby
a = 2
b = 3
c = a * b
puts c
```

```
$ ruby calc.rb
5
```

## If Else

条件分岐

### ifelse.rb
```ruby
# 入力文字列をintに変換
n = gets.to_i

if n >= 10 
  puts "#{n}は10以上"
else
  puts "#{n}は10以下"
end
```
- 数値の比較 `>`, `<`, `>=`, `<=`, `!=`, `==`

`#`で始まる行はコメントアウト(実行されない). プログラムの意味を説明したり、一時的にコードをスキップする際に使う

## Case .. When

### case.rb
```ruby
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
```

## 関数 (function)

繰り返して使うコードをまとめる.

### func.rb
```ruby
def hi(name)
  puts "Hello #{name}!"
end

hi("ruby")
hi("world")
```

`name`は変数名。関数の引数(argument)

## for loop

### loop.rb
```ruby
for i in 1..10
    puts i
end
```

```
# ruby loop.rb
1
2
3
4
5
6
7
8
9
10
```

## while loop

### while.rb
```ruby
i = 0
while i < 3 do
  i += 1
end
```

## 再帰 (recursion)

例えば`4! = 4 x 3 x 2 x 1`, `10! = 10 x 9 x 8 x 7 x .... x 1`を計算したい。

### recursion.rb
```ruby
def fac(n)
  if(n == 0)
    1
  else
    n * fac(n-1)
  end
end    

puts fac(4)
puts fac(10)
```

```
$ ruby recursion.rb
24
3628800
```

実行の様子
```ruby
fac(4)
4 * fac(3)
4 * 3 * fac(2)
4 * 3 * 2 * fac(1)
4 * 3 * 2 * 1
```

## Array (配列)

### array.rb
```ruby
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
```

## Hash (key-valueペア)

### hash.rb
```ruby
price = {"apple" => 100, "banana" => 50}

puts price["apple"]
puts price["banana"]

price.each {|product,price|
  puts "#{product}: price=#{price}"
}
```

```
$ ruby hash.rb
100
50
apple: price=100
banana: price=50
```

## 参考

- [Ruby User's Guide](http://www.rubyist.net/~slagell/ruby/getstarted.html)
- [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
