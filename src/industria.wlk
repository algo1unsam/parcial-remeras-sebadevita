import remeras.*
import autores.*

object empresa {

	var property pedidos   = []
	var sucursales = []

	method agregarPedido(pedido) {
		pedidos.add(pedido)
	}

	method registrarCantidadDePedidos() {
		return pedidos.size()
	}

	method totalRecaudado() {
		return sucursales.sum{ sucursal => sucursal.totalRecaudado(self) }
	}

	method sucursalQueMasRecaudo() {
		return sucursales.max{ sucursal => sucursal.totalRecaudado() }
	}

	method cantidadDePedidosDeUnColor(colorQueBusco) {
		return pedidos.count{ pedido => pedido.color() == colorQueBusco }
	}

	method elPedidoMasCaro() {
		return pedidos.max{ pedido => pedido.precioFinal() }
	}

	method agregarSucursal(sucursal) {
		sucursales.add(sucursal)
	}

}