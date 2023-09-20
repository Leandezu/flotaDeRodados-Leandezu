import rodados.*

class Dependencia{
	var property cantidadEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	method pesoTotalDeLaFlota(){
		rodados.sum({obj => obj.peso()})
	}
	method todosSuperanXVelocidad(unaVelocidad){
		return rodados.all({rodado => rodado.velocidad() >= unaVelocidad})
	}
	method estaBienEquipada(){
		return rodados.size() >= 3 and self.todosSuperanXVelocidad(100)
	}
	method capacidadTotalEnColor(color){
		return self.rodadosDeColor(color).sum({r => r.capacidad()})
	}
	method rodadosDeColor(color) {
		return rodados.filter({r => r.color() == color})
	}
	method colorDelRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	method rodadoMasRapido() {
		if(rodados.isEmpty()){
			self.error("No se puede calcular el maximo")
		}
		return rodados.max({r => r.velocidad()})
	}
	method capacidadDeLaFlota(){
		return rodados.sum({r => r.capacidad()})
	}
	method capacidadFaltante(){
		return 0.max(cantidadEmpleado - self.capacidadDeLaFlota())
	}
	method esGrande(){
		return cantidadEmpleado >= 40 and rodados.size() >= 5
	}
}
