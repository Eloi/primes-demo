#!env ruby

require_relative 'lib/prime_generator'

# Generate primes below 30 (first 10 primes)
prime_generator = PrimeGenerator.new
primes = prime_generator.generate(30)

# Output tab-delimited primes product matrix
print "--\t"
puts primes.join("\t")

primes.each do |prime|
  print "#{prime}\t"
  puts primes.map{|x| x*prime}.join("\t")
end
