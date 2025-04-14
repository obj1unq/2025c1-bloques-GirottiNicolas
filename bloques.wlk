object pepita {
  var energia = 100

  method energia() = energia

  method volar(distancia) {
    self.validarVolar(distancia)
    energia = energia - self.energiaParaVolar(distancia)
  }

  method validarVolar(distancia) {
    if (energia < self.energiaParaVolar(distancia)) {
      self.error("No puedo volar esta distancia")
    }
  }

  method energiaParaVolar(distancia) {
    return 10 + distancia
  }

  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
  }

}

object alpiste {
  method energiaQueAporta() = 20
}

object miAsserter {

    method assertException(bloque) {

      try {
        bloque.apply() //ejecuto el bloque
        return false //no anda como espero
      }
      catch e: Exception {
        return true //anda como espero
      } 
      
    }

}


object roque {
	var ave = pepita
	var cenas = 0;
	
  // Configuramos una rutina inicial vacia
  var rutina = {}

  // Metodo para configurar una rutina x
  method rutina(_rutina){
    rutina = _rutina
  }

	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas += 1
	}

	method cenas(){
		return cenas
	}

  method entrenar() {
    rutina.apply()
  }
}