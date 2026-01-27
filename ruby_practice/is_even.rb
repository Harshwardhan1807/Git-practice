# class EvenChecker
 
# attr_accessor :cache
  
# def initialize
#   @cache = {}
# end
 
# def is_even(n)
#   return @cache[n] if @cache.key?(n)
#   result = n.even?
#   @cache[n] = result
#   result
# end
# end
 
# checker = EvenChecker.new
 
# checker.is_even(2)
# checker.is_even(3)
# checker.is_even(2)
# puts checker.cache
 
cache = {}

is_even = ->(n) {
  if cache.key?(n)
    cache[n] 
  else
    cache[n] = n.even?
  end
}

puts is_even.call(2)
puts is_even.call(3)
puts is_even.call(2)
p cache
