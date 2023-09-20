
class Corsa{
	var property color
	
	method capacidad() = 4
	method velocidad() = 150
	method peso() = 1300
	
}

class Kwid{
	var tieneTanque = false
	
	method capacidad(){
		return if(not tieneTanque){4}else{3}
	}
	method velocidad() = if(not tieneTanque){110}else{120}
	method peso() = if(not tieneTanque){1200}else{1350}
	method color() = "azul"
}

object traffic{
	var property interior
	var property motor
	
	method configurar(unInterior, unMotor){
		interior = unInterior
		motor = unMotor
	}
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method peso() = 4000 + interior.peso() + motor.peso()
	method color() = "blanco"	
	
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80 
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000
}

class AutoEspecial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}





