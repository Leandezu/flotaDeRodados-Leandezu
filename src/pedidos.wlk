import rodados.*
import dependencias.*

class Pedido {
	
	var property distancia
	var property tiempo
	var property pasajeros
	var property incompatibles = #{}
	
	method puedeSatisfacerUnPedido(auto){
		return auto.velocidad() + 10 - (distancia.div(tiempo)) >= 10 and
		auto.capacidad() >= pasajeros and
		not incompatibles.any({a => a == auto.color()})
	}
	
	method acelerar(){
		tiempo = tiempo - 1
	}
	method relajar(){
		tiempo = tiempo + 1
	}
}
