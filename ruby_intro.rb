# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0,:+)
end

def max_2_sum arr
  if arr.length < 2
    if arr.length == 1
      return arr[0]
    end
    return 0
  end
  arr.sort[-1]+arr.sort[-2]
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each{|x| 
  if( x.reduce(:+) == n )
    return true
  end
  }
  return false
end

# Part 2

def hello(name)
  "Hello, "+ name
end

def starts_with_consonant? s
  s =~  /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  s.length != 0 && s.scan(/[10]/).count == s.length && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError unless 
    isbn != '' && price > 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    '$'+ '%.2f' % @price
  end
  
end
