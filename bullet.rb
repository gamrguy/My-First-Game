class Bullet
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/bullet.png", true)
    @x = 50
    @y = 50
  end
  
  def update
  end
  
  def draw
    @icon.draw(@x, @y, 2)
  end
  
  def fire(x)
    @x = x + 10
  end
  
  def move_left
    @x = @x + 10
  end
  
  def move_right
    @x = @x - 10
  end
  
  def move_up
    @y = @y - 10
  end
  
  def move_down
    @y = @y + 10
  end
  
end