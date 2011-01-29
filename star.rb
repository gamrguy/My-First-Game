class Star
  
  def initialize(game_window)
    @game_window = game_window
    @x = 0
    @y = 0
    @min_speed = 1
    @max_speed = 10
    @icon = Gosu::Image.new(@game_window, "images/star.png")
    @speed = @min_speed + rand(@max_speed - @min_speed)
  end
  
  def update
    if @y > @game_window.height
      reset!
    else
      @y = @y + @speed
    end
  end
  
  def draw
    @icon.draw(@x,@y,2)
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def reset!
    @y = 0
    @x = rand(@game_window.width)
    @speed = @min_speed + rand(@max_speed - @min_speed)
  end
  
end