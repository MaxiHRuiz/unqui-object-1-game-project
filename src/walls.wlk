import wollok.game.*

class Wall {
  var property position = game.at(0,0)

  method image() = "./assets/muro.png"
  
  method setPosition(x, y){
  		position = game.at(x, y)
  }
  
  method whenCollide(mainCharacter){
  		mainCharacter.evadeCollide()
  }
}