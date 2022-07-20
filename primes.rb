def primes(limit)
  return [] if limit < 2

  temp = [limit]

  (2...limit).each do |divider|
    if limit % divider == 0
      temp = []
      break
    end
  end

  primes(limit - 1) + temp
end