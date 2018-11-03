import autores.*

class Remera {
	
	var talle = null
	var property color = null
	var precioBase = null
	var tipoDeRemera = null
	
method remeraBarata(){
	return (talle>= 31 and talle<=41)
	
	
}	
	
	
method precio(){
	
	if (self.remeraBarata()){
		return 80 } 
		else{
		return 100	
			
	}
	
	
}		
	
}


class Lisa inherits Remera{
	
	
	override method precio(){
		return super() + self.extraPorColor()
	}
	
	
	method extraPorColor(){
		
		if (not self.esBasica()){
			
			return precioBase * 0.10
			
		}
			return 0
		
	}
	
	method esBasica(){
		
		return (color == "gris" or color =="blanco" or color == "negro")
		
	}
	
	method porcentajeDeDescuento(){
		
		return 0.1
		
	} 
	
}

class Bordada inherits Remera{
	
	
	var coloresDelBordado = []
	
	override method precio(){
		return super() + self.extraPorBordado()
	}
	
	method extraPorBordado(){
		if (self.cantidadDeColoresDelBordado() < 2){
			
			return 0.2
			
		}
		return self.cantidadDeColoresDelBordado() * 10
		
		
	}
	
	method cantidadDeColoresDelBordado(){
		
		return coloresDelBordado.size()
		}
	
	method bordarColor(color){
		coloresDelBordado.add(color)
		
	}
	
	method desbordarColor(color){
		coloresDelBordado.remove(color)
	
	
	
}

	method porcentajeDeDescuento(){
		
		return 0
	}
}


class Sublimada inherits Remera{

var ancho = null
var alto = null
var property autor = null
	
override method precio(){
		return super() + self.extraPorSublimado() + self.extraPorDerechosDeAutor(autor)
	}	
	
	
method extraPorSublimado(){
	
	return self.superficie() *0.5
	
}	

method superficie(){
	
	return ancho * alto
}


method extraPorDerechosDeAutor(marca){
	
	return autor.precioDerechoDeAutor()
	
}

method porcentajeDeDescuento(){
	
	
	if (autor.tieneConvenio()){
		return 0.20
		
	} else{
		return 0.10
		
	}
}

	
}