class Elemento {
  method esBueno() 
  method efecto(unaPlaga)
}

class Hogar inherits Elemento {
  var property nivelDeMugre = 0
  var property confortQueOfrece = 0
  override method esBueno() {
    return nivelDeMugre <= confortQueOfrece / 2
  }
  override method efecto(unaPlaga) {
    nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDaño()
  }
}
class Huerta inherits Elemento {
  var property nivel = 0
  var property capacidadDeProduccion = 0
  override method esBueno() {
    return capacidadDeProduccion > nivel
  }
  override method efecto(unaPlaga) {
    capacidadDeProduccion = capacidadDeProduccion - unaPlaga.nivelDeDaño() * 0.1
    if (unaPlaga.transmitenEnfermedades()) {capacidadDeProduccion = capacidadDeProduccion - 10}
  }
}
class Mascota inherits Elemento {
  var property nivelDeSalud = 0
  override method esBueno() {
    return nivelDeSalud > 250
  }
  override method efecto(unaPlaga) {
    if (unaPlaga.transmitenEnfermedades()) {nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDaño()}
  }
}
