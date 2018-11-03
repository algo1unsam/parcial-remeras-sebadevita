class Sucursal {

	var barrio = null
	var minimoParaDescuento = null

	method descuento(pedido) {
		if (minimoParaDescuento < pedido.cantidad()) {
			return pedido.tipoDeRemera().porcentajeDeDescuento()
		} else {
			return 0
		}
	}

	method totalRecaudado(empresa) {
		return empresa.pedidos().sum{ pedido => pedido.precioFinal() }
	}

}

