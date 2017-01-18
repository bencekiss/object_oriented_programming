class Paperboy

  attr_reader :earnings, :name, :experience

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    return (50 + @experience/2)
  end

  def deliver(start_address, end_address)
    if start_address >= end_address
      diff = start_address - end_address
    else
      diff = end_address - start_address
    end
    diff += 1
    if diff == quota
      money = diff * 0.25
    elsif diff > quota
      money = quota * 0.25 + (diff - quota) * 0.5
    else
      money = diff * 0.25 - 2
    end
    @experience += diff
    @earnings += money
    return money
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far."
  end

end

tommy = Paperboy.new("Tommy")

tommy.quota # => 50
tommy.deliver(160, 101) # => 17.5
tommy.earnings #=> 17.5
puts tommy.report

tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75

tommy.earnings
puts tommy.report
