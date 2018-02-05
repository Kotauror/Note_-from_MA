class Coin
  def initialize
    @headcount = 0
  end

  def randomiser
    arr = [:heads, :tails]
    arr.sample
  end

  def flip_coin
    output = randomiser
    output == :heads ? @headcount += 1 : @headcount
  end
end
