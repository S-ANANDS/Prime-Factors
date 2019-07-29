class PrimeFactors
    def self.for(n)
      return [] if n == 1
      p = (2..n).find { |prime| n % prime == 0}
      [p] + self.for(n / p)
    end
  end