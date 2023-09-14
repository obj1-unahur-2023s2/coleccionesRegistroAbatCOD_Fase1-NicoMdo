object callOfDuty {
	const registro = []
	
	method dia(reg)= reg.get(1)
	
	method cantAbatidos(reg) = reg.get()
	
	method agregarAbatidosDia(cantidad, dia){
		if (self.yaEstaElDia(dia)){
			self.error("ya existe el dia ")
		}
		registro.add([cantidad, dia])
	}
	
	method agregarAbatidosVariosDias(registrosAbatidos){
		if                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	
	method yaEstaElDia(dia){
		return registro.any({x => self.dia(x) == dia })
	}
	
	method registroDia(dia){
		return registro.find({r => self.dia(r) == dia })
	}
	
	method eliminarElRegistroDelDia(dia){
		if  (!self.yaEstaElDia(dia)){
			self.error("El dia no esta el dia ")
		}
		registro.remove(self.registroDia(dia))
	}
	
	method eliminarVariosRegistrosDeDias(listaDeDias){
		if(listaDeDias.all{e => self.yaEstaElDia(e)}){
			listaDeDias.forEach{e =>self.eliminarElRegistroDelDia(e)}
		}
		self.error("hay dias que no estan")
	}



}
	
