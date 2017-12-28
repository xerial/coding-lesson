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

## String (文字列)

- [正規表現 (regular expression)](https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html)

### strings.rb
```ruby
s1 = 'Ruby'
s2 = "Hello #{s1}!"

puts s1
puts s2
puts s2.length
puts s1[0, 2]
puts s2.index(/ll/)  # 正規表現で検索

a = [1, 2, 3]

puts a.join(", ")`
```

## 2進数(binary)、16進数(hex)

コンピューターの世界では、数字は2進数で表されます。

### bits.rb
```ruby
(0 .. 16).each {|i| 
    puts "#{i}: binary #{i.to_s(2)}, hex: #{i.to_s(16)}"
}
```

```
$ ruby bits.rb
0: binary 0, hex: 0
1: binary 1, hex: 1
2: binary 10, hex: 2
3: binary 11, hex: 3
4: binary 100, hex: 4
5: binary 101, hex: 5
6: binary 110, hex: 6
7: binary 111, hex: 7
8: binary 1000, hex: 8
9: binary 1001, hex: 9
10: binary 1010, hex: a
11: binary 1011, hex: b
12: binary 1100, hex: c
13: binary 1101, hex: d
14: binary 1110, hex: e
15: binary 1111, hex: f
16: binary 10000, hex: 10
```

16進数を表すのに、`0x`を先頭につけます。
`0xFF`   # 255    = 15 * 16 + 15
`0xFFFF` # 65536

## データサイズ

```
1 byte = 8 bits
1 kB = 1024 bytes = 2^10
1 MB = 1024 kB    = 2^20
1 GB = 1024 MB    = 2^30
1 TB = 1024 GB    = 2^40
1 PB = 1024 TB    = 2^50
1 EB = 1024 PB    = 2^60
```



## 参考
- [１時間で覚えるRuby](http://mayah.jp/article/2004/ruby/)
- [Ruby基礎文法最速マスター](http://route477.net/d/?date=20100125)
- [Ruby リファレンスマニュアル](https://docs.ruby-lang.org/ja/latest/doc/index.html)
- [Ruby User's Guide](http://www.rubyist.net/~slagell/ruby/getstarted.html)
- [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
