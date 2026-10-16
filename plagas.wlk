class Plaga {
  var property poblacion = 0
  //method ataqueAlBarrio(barrio)
  method nivelDeDaño()
  method transmitenEnfermedades() {
    return poblacion >= 10
  }
}
class PlagaDeCucaracha inherits Plaga {
  var property pesoPromedio = 1
  override method nivelDeDaño() {
    return poblacion / 2
  }
  override method transmitenEnfermedades() {
    return pesoPromedio >= 10 && super()
  }
}
class PlagaDePulga inherits Plaga {
  override method nivelDeDaño() {
    return poblacion * 2
  }
}
class PlagaDeGarrapata inherits Plaga {
  override method nivelDeDaño() {
    return poblacion * 2
  }
}
class PlagaDeMosquito inherits Plaga {
  override method nivelDeDaño() {
    return poblacion
  }
  override method transmitenEnfermedades() {
    return poblacion % 3 == 0 && super()
  }
}