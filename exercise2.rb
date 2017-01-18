class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name.capitalize
    @preferred_food = preferred_food.capitalize
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    elsif @meal_time == 12
      return "#{@meal_time} PM"
    else
      return "#{@meal_time - 12} PM"
    end
  end

  def meow
    "MYYEEOOOOW name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end


first_cat = Cat.new("Garfield", "whiskas", 22)
second_cat = Cat.new("Sylvester", "friskies", 12)


puts first_cat.meow
puts second_cat.meow
