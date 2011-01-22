require 'rubygems'
require 'gosu'
require 'player'

class MyGame < Gosu::Window
  
  def initialize
    super(300,300,false)
    @player1 = Player.new(self, 50, 50, (Gosu::Image.new(self, "images/player1_icon.png", true)) )
    @player2 = Player.new(self, 175, 175, (Gosu::Image.new(self, "images/player2_icon.png", true)) )
    # @score1 = 0
    # @score2 = 0
  end
  
  def update
    
    @player1.move_left  if button_down? Gosu::Button::KbLeft
    @player1.move_right if button_down? Gosu::Button::KbRight
    @player1.move_up    if button_down? Gosu::Button::KbUp
    @player1.move_down  if button_down? Gosu::Button::KbDown
    
    @player2.move_left  if button_down? Gosu::Button::KbA
    @player2.move_right if button_down? Gosu::Button::KbD
    @player2.move_up    if button_down? Gosu::Button::KbW
    @player2.move_down  if button_down? Gosu::Button::KbS

    
    # @score1 = @score1 + 100 if @player1.die
    # @score2 = @score2 + 100 if @player2.die
    # bullet = @Bullet.new if @player1.shoot
    # @player1.shoot if button_down? Gosu::Button::KbRightShift
    # @player2.shoot if button_down? Gosu::Button::KbQ
    
  end
  
  def draw
    @player1.draw
    @player2.draw
  end
    
    
end

window = MyGame.new
window.show