require_relative 'GameObject'
class EnemyShoot<GameObject

  def initialize(movement)
    @texturePath='./assets/textures/enemyshoot.png'
    @scaleX,@scaleY=0.1,0.1
    @speed= 6
    @soundPath="./assets/audios/enemyfire.wav"
    super(movement.x+15  ,movement.y)
    loadSound()
    playSound()
  end
end