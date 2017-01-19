class Player
  attr_reader :gold_coins, :health_points, :lives, :score


  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0

  end

  def do_battle
    @health_points -= 1

    if @health_points <= 0
      @lives -= 1
      @health_points = 10
      if @lives <= 0
        restart
      end
    end
  end

  def restart
    initialize
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(coins)
    # if coins > 9
    #   return "Don't try to hack me. The biggest treasure to collect at once is 9 coins."
    # end

    @gold_coins += coins


    if @gold_coins >= 10
      temp = @gold_coins / 10
      @score += temp

      if @score >= 10
        tempscore = @score / 10
        tempscore.times {level_up}
        @score -= tempscore * 10
      end
      @gold_coins -= temp * 10
    end

  end


end



p1 = Player.new
51.times {p1.do_battle}
puts "Health points: #{p1.health_points}, lives: #{p1.lives}"

p1.collect_treasure(134)
puts "Gold coins: #{p1.gold_coins}, Score:#{p1.score}, lives: #{p1.lives}"
