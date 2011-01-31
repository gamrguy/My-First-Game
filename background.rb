class Background
  
  def initialize(game_window)
    @game_window = game_window
    @bgimage = Gosu::Image.new(@game_window, "images/bg.png")
    @mario = Gosu::Image.new(@game_window, "images/mario.png")
    @shooting_star1 = Gosu::Image.new(@game_window, "images/star.png")
    @shooting_star2 = Gosu::Image.new(@game_window, "images/star.png")
    @shooting_star3 = Gosu::Image.new(@game_window, "images/star.png")
    @shooting_star_x1 = 150 + (-1 + rand(1))
    @shooting_star_x2 = 150 + (-1 + rand(1))
    @shooting_star_x3 = 150 + (-1 + rand(1))
    @shooting_star_y1 = 500 - (1  + rand(10))
    @shooting_star_y2 = 500 - (1  + rand(10))
    @shooting_star_y3 = 500 - (1  + rand(10))
    @min_speed = 1
    @max_speed = 10
    @speed = @min_speed + rand(@max_speed - @min_speed)
  end
  
  def update
    @shooting_star_x1 + (-1 + rand(1))
    @shooting_star_x2 + (-1 + rand(1))
    @shooting_star_x3 + (-1 + rand(1))
    
    @shooting_star_y1 + (1 + rand(10))
    @shooting_star_y2 + (1 + rand(10))
    @shooting_star_y3 + (1 + rand(10))
    
    reset1 if @shooting_star_y1 = 0
    reset2 if @shooting_star_y2 = 0
    reset3 if @shooting_star_y3 = 0
  end
  
  def draw
    @shooting_star1.draw(@shooting_star_x1,@shooting_star_y1,-2,0.6,0.6)
    @shooting_star2.draw(@shooting_star_x2,@shooting_star_y2,-2,0.6,0.6)
    @shooting_star3.draw(@shooting_star_x3,@shooting_star_y3,-2,0.6,0.6)
    @mario.draw(150,450,-1)
    @bgimage.draw(0,0,-3)
  end
  
  def reset1
    @shooting_star_x1 = 150
    
    @shooting_star_y1 = 500
  end
  
  def reset2
    @shooting_star_x2 = 150
    
    @shooting_star_y2 = 500
  end
  
  def reset3
    @shooting_star_x3 = 150
    
    @shooting_star_y3 = 500
  end

end