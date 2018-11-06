import remeras.*
import industria.*
import autores.*

class Pedido {

	var property cantidad = null
	var property tipoDeRemera = null
	var property sucursal = null
	var property color = null
	var talle = null

	method precioFinal() {
		return self.precioBase() * (1 - sucursal.descuento(self))
	}

	method precioBase() {
		return cantidad * tipoDeRemera.precio()
	}

}

