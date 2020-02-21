# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
  	return 0
  elsif arr.length == 1
  	return arr[0]
  end
  arr.sort[-2] + arr.sort[-1]
end

def sum_to_n? arr, n
  if arr.length < 2
  	return false
  end
  arr = arr.sort
  i = 0
  j = arr.length - 1
  sum = arr[i] + arr[j]
  while i < j
  	if sum == n
  		return true
  	elsif sum > n
  		j = j -1
  	else
  		i = i + 1
  	end
  	sum = arr[i] + arr[j]
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
  	true
  end
  if s[0] =~ /[^a-z]/i
  	return false
  end
  s[0] =~ /[^aeiou]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /[^01]/
  	return false
  end
  if s == "0"
  	return true
  end
  if s.length < 3
  	return false
  end
  if s[-3] == "1" and !(s[-2,2] =~ /[1]/)	
  	return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
		if isbn == "" or price < 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def price_as_string
		st_price = @price.to_s
		dot_ind = st_price =~ /[.]/
		if !dot_ind
			return "$" + st_price + ".00"
		end
		if st_price[dot_ind, 3].length == 2
			return "$" + st_price + "0"
		end
		"$" + st_price
	end
end
