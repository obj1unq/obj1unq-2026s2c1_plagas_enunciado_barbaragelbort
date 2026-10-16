class Elemento {
  method esBueno() 
}

class Hogar inherits Elemento {
  var property nivelDeMugre = 0
  var property confortQueOfrece = 0
  override method esBueno() {
    return nivelDeMugre <= confortQueOfrece / 2
  }
}
class Huerta inherits Elemento {
  var property nivel = 0
  var property capacidadDeProduccion = 0
  override method esBueno() {
    return capacidadDeProduccion > nivel
  }
}
class Mascota inherits Elemento {
  var property nivelDeSalud = 0
  override method esBueno() {
    return nivelDeSalud > 250
  }
}
