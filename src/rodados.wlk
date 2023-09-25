import dependencias.*

class Corsa{
	var property color
	
	method capacidad() = 4
	method velocidad() = 150
	method peso() = 1300
}

class Kwid{
	var tieneTanque = true
	
	method capacidad(){
		return if(tieneTanque){3}else{4}
	}
	method velocidad(){
		return if(tieneTanque){120}else{110}
	}
	method peso(){
		return if(tieneTanque){1350}else{1200}
	}
	method color() = "azul"
}

object trafic{
	 var interior = popular
	 var motor = bataton
	 
	 method capacidad() = interior.capadidad()
	 method velocidad() = motor.velocidad()
	 method peso() = 4000 + interior.peso() + motor.peso()
	 method color() = "blanco"
}

class AutoEspecial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}

object comodo{
	
	method capacidad() = 5
	method peso() = 700
}

object popular{
	
	method capadidad() = 12
	method peso() = 1000
}

object pulenta{
	
	method peso() = 800
	method velocidad() = 130
}

object bataton{
	
	method peso() = 500
	method velocidad() = 80
}















