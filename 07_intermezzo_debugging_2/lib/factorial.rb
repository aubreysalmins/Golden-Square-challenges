def factorial(n)
  product = 1
  while n > 0
    product *= n
    n -= 1
    binding.irb
  end
  product
end

p factorial(5)