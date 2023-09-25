class Dependencia{
	var property cantEmpleados
	var flota = []
	var pedidos = []
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	method pesoTotalFlota(){
		return flota.sum({r => r.peso()})
	}
	method estaBienEquipada(){
		return flota.size() >= 3 and flota.all({r => r.velocidad() >= 100})
	}
	method capacidadTotalEnColor(color){
		return flota.filter({r => r.color() == color}).sum({r => r.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flota.max({r => r.velocidad()}).color()
	}
	method capacidadFaltante(){
		return 0.max(cantEmpleados - flota.sum({r => r.capacidad()}))
	}
	method esGrande(){
		return flota.size() == 5 and cantEmpleados >= 40
	}
	method estaElRodado(rodado){
		return flota.find({r => r == rodado})
	}
	
	method agregarPedido(unPedido){
		pedidos.add(unPedido)
	}
	
	method quitarPedido(unPedido){
		pedidos.remove(unPedido)
	}
	
	method totalDePasajerosEnPedidos(){
		return pedidos.sum({p => p.pasajeros()})
	}
	
	method ningunoSatisfaceElPedido(pedido){
		return flota.all({r => not pedido.puedeSatisfacerUnPedido(r)})
	}
	
	method pedidosInsatisfechos(){
		return pedidos.filter({p => self.ningunoSatisfaceElPedido(p)})
	}
	
	method noEsCompatibleConElColorDelPedido(color){
		return pedidos.all({p => not p.incompatibles().any({c => c == color})})
	}
	
	method relajarTodosLosPedidos(){
		return pedidos.forEach({p => p.relajar()})
	}
	
	
}