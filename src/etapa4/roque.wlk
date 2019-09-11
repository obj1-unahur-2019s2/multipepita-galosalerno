import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilas = []
	
	
	method agregarPupila(unAve){
	pupilas.add(unAve)
	}
	method quitarPupila(unAve){
	pupilas.remove(unAve)
	}
	method entrenar(pupila) {
 		pupila.volar (10)
 		pupila.comer (mondongo, 300)
 		pupila.volar (5)
 		pupila.haceLoQueQuieras ()
	}
	method entrenarTodas(){
	pupilas.forEach({a => self.entrenar(a)})
	}


	method avesFelices(){
		return pupilas.filter({a => a.estaFeliz()})
	}
	
	method entrenarFelices(){
		self.avesFelices().forEach({a=> self.entrenar(a)})
	}	

}
	