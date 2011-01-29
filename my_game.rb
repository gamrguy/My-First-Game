require 'rubygems'
require 'gosu'
require 'player'
require 'star'
# require 'bullet'

class MyGame < Gosu::Window
  
  def initialize
    super(350,500,false)
    @player1 = Player.new(self, 50, 50, (Gosu::Image.new(self, "images/atomic_boo.png", true)) )
    @stars = 3.times.map {Star.new(self)}
    @running = true
    @player2 = Player.new(self, 175, 175, (Gosu::Image.new(self, "images/purple_boo.png", true)) )
    @bg = Gosu::Image.new(self, "images/bg.png")
    @font = Gosu::Font.new(self, Gosu::default_font_name, 30)
    @score = 0
    @highscore = 0
  end
  
  def update
    if @running
      @stars.each {|star| star.update}
      @player1.move_left  if button_down? Gosu::Button::KbLeft
      @player1.move_right if button_down? Gosu::Button::KbRight
      @player1.move_up    if button_down? Gosu::Button::KbUp
      @player1.move_down  if button_down? Gosu::Button::KbDown
      
      @player2.move_left  if button_down? Gosu::Button::KbA
      @player2.move_right if button_down? Gosu::Button::KbD
      @player2.move_up    if button_down? Gosu::Button::KbW
      @player2.move_down  if button_down? Gosu::Button::KbS
      
     if @player1.hit_by?(@stars) or @player2.hit_by?(@stars)
        stop_game!
      end
      @score += 1
      @highscore = @score unless @score < @highscore
    
    else
      if button_down? Gosu::Button::KbEscape
        restart_game
        @score = 0
      end
    end


    
    # @score1 = @score1 + 100 if @player1.die
    # @score2 = @score2 + 100 if @player2.die
    # bullet = @Bullet.new if @player1.shoot
    # @player1.shoot if button_down? Gosu::Button::KbRightShift
    # @player2.shoot if button_down? Gosu::Button::Kb
    
  end
  
  def draw
    @player1.draw
    @stars.each {|star| star.draw}
    @player2.draw
    @bg.draw(0,0,-3)
    @font.draw("Score: #{@score}",0,0,0)
    @font.draw("Highscore: #{@highscore}",0,35,0)
  end
  
  def stop_game!
    @running = false
  end
  
  def restart_game
    @running = true
    @stars.each {|star| star.reset!}
  end
    
    
end

window = MyGame.new
window.show