require 'bullet'

class Player
  
  def initialize(game_window, x, y, icon)
    @game_window = game_window
    @icon = icon
    # @bulleticon = Gosu::Image.new(@game_window, "images/bullet.png", true)
    # @bx = 50
    @x = x
    @y = y
  end
 
  def update
  end
 
  def draw
    @icon.draw(@x,@y,1)
    # @bulleticon.draw(@bx,@y,-1)
  end
  
  def move_left
    if @x < 0
      @x = 0
    else
      @x = @x - 10
    end
  end
  
  def move_right
    if @x > (@game_window.width - 75)
      @x = (@game_window.width - 75)
    else
      @x = @x + 10
    end
  end
  
  def move_up
    if @y < 0
      @y = 0
    else
      @y = @y - 10
    end
  end
  
  def move_down
    if @y > (@game_window.height - 75)
      @y = (@game_window.height - 75)
    else
      @y = @y + 10
    end
  end
 
  # def shoot
  #    bullet = Bullet.new(@game_window)
  #    bullet_position = bullet.fire(@x)
  #    bulleticon = @bulleticon.new
  #    @bulleticon.draw(bullet_position)
  #    bullet_position + 10
  #   end

  def die
   @x = 50
   @y = 50
  end
   
end