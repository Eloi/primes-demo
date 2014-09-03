Primes product matrix
=====================

A simple script that generates the product matrix of the first 10 prime numbers. 

The matrix is generated to standard output in a tab-separated format, suitable to be redirected to disk as CSV to be lated imported in spreadsheets.

Implementation notes
-----------------------

Instead of the stdlib Prime class, a custom class that uses a simple implementation of [Sieve of Erastothenes](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) to generate prime numbers is used.

Legibility has been chosen over performance. There are some little performance/memory improvements (using a Set to store prime number candidates, iterate over the same row when generating the matrix instead of generating all matrix in memory, use generators when possible, etc.) but the performance could be vastly improved.

Per example, only half of the products of the matrix should be calculated (the other half could be mirrored), and there are more memory efficient methods to calculate prime numbers than the Sieve (the Sieve incremental version, or other methods).

Complexity and scaling issues
-------------------------------------------------

PrimeGenerator could calculate prime numbers up to any N, with exponential CPU usage and linear memory usage.

In practice, this severily limits the amount of prime numbers we could generate, and therefore this class is not recommended for use in any real mathematical problem which requires milions of primes.

The product matrix calculation time is pretty trivial compared to the prime numbers generating time, both in processor and memory usage, if we take care in not generating the full matrix in memory.

As long as we have memory space enough to store and iterate over one array with X prime numbers, we could generate the product matrix (it could take a long time for huge arrays, though).

Testing
----------

Some simple rspec tests are included.

