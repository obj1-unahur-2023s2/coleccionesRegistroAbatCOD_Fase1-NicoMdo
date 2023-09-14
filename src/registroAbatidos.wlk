object callOfDuty {
	const indiceAbatidos = 1
	const registro = []
	const indiceFecha = 0
	const dias = []
	const cantidadDeAbatidos = []
	
	method agregarAbatidosDia(cantidad, dia){
		if (self.tieneRegistroDelDia(dia)) {
			self.error("Ya existe registro para el día indicado")
		}
		registro.add([dia, cantidad])
		cantidadDeAbatidos.add(cantidad)
	}
	
	method agregarAbatidosVariosDias(listaCantidad, listaDia){
			dias.addAll(listaDia)
			cantidadDeAbatidos.addAll(listaCantidad)

	}
	
	method tieneRegistroDelDia(dia) {
		return registro.any({ r => r.get(indiceFecha) == dia })
	}

	method registroDelDia(dia) {
		return registro.find({ r => r.get(indiceFecha) == dia })
	}
	
	method eliminarElRegistroDelDia(dia) {
		registro.remove(self.registroDelDia(dia))
	}
	
	method eliminarLosRegistrosDeDias(listaDia){
		listaDia.forEach()
	}
	
	method cantidadDeDiasRegistrados() {
		return registro.size()
	}

	method estaVacioElRegistro() {
		return registro.size() == 0
	}
	
	method algunDiaAbatio(cantidad) {
		return registro.any({ r => r.get(indiceAbatidos) == cantidad})
	}
	
	method primerValorDeAbatidos() {
		return registro.first().get(indiceAbatidos)
	}

	method ultimoValorDeAbatidos() {
		return registro.last().get(indiceAbatidos)
	}

	method ultimoValorDeAbatidosConSize() {
		return registro.get(registro.size() - 1).get(indiceAbatidos)
	}

	method maximoValorDeAbatidos() {
		return registro.max({ r => r.get(indiceAbatidos) }).get(indiceAbatidos)
	}
	
	method totalAbatidos() {
		return registro.sum({ r => r.get(indiceAbatidos) })
	}
	
	method cantidadDeAbatidosElDia(dia) {
		return self.registroDelDia(dia).get(indiceAbatidos)
	}
	
	method diasConAbatidosSuperioresA(cuanto) {
		return registro.filter({ r => r.get(indiceAbatidos) > cuanto }).map({ r => r.get(indiceFecha) })
	}
	
	method valoresDeAbatidosPares() {
		return registro.filter({r => r.get(indiceAbatidos).even()}).map({ r => r.get(indiceAbatidos) })
	}
	
	method elValorDeAbatidos(cantidad) {
		
	}
	
	method abatidosSumando(cantidad) {
		return registro.map( { r => r.get(indiceAbatidos) + cantidad})
	}
	
	method abatidosEsAcotada(n1, n2) {
		return registro.all({ r => r.get(indiceAbatidos).between(n1, n2)})
	}
	
	method algunDiaAbatioMasDe(cantidad) {
		return registro.any({ r=>r.get(indiceAbatidos) > cantidad })
	}
	
	method todosLosDiasAbatioMasDe(cantidad) {
		return registro.all({ r=>r.get(indiceAbatidos) > cantidad })
	}
	
	method cantidadAbatidosMayorALaPrimera() {
		return registro.count({ r => r.get(indiceAbatidos) > registro.first().get(indiceAbatidos)})
	}
	
	method esCrack() {
		return 	registro.size() >= 2 
				and (1..registro.size()-1).all({i => registro.get(i-1).get(indiceAbatidos) < registro.get(i).get(indiceAbatidos)})
	}
	
}