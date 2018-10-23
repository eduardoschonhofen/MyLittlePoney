require_relative 'Definitions'
require_relative 'Texture'
require_relative 'Movement'
class Player
  attr_accessor :Movement

  def initialize
    @texturePath='./assets/textures/xwing.png'
    @Texture = Texture.new(@texturePath, 0.1, 0.1)
    @speed,@x,@y= 2,Definitions::RES_WIDTH/2,Definitions::RES_HEIGHT-80
    @width, @height = @Texture.texture.width*0.1,@Texture.texture.height*0.1
    @Movement=Movement.new(@speed, @x, @y, @width, @height)
  end

  def MoveLeft
    @Movement.left
  end
  def MoveRight
    @Movement.right
  end

  def draw
    @Texture.draw(@Movement.x,@Movement.y)
  end

end
