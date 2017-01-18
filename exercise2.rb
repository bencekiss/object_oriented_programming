class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
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

end


first_cat = Cat.new("Garfield", "whiskas", 22)
second_cat = Cat.new("Sylvester", "friskies", 8)
