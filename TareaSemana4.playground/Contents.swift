//: Tarea: Semana 4

//Crear un playground que contenga los elementos para representar un velocímetro de un automóvil. Entonces, ¿Que se debe realizar?.
//
//Declarar la enumeración: Velocidades, sus valores serán de tipo Int.
//La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
// - VelocidadBaja = 20, representa una velocidad de 20 km por hora.
// - VelocidadMedia = 50, representa una velocidad de 50 km por hora.
// - VelocidadAlta = 120, representa una velocidad de 50 km por hora.
// - Además, debes de declarar un inicializador que recibe una velocidad:
//    - init(velocidadInicial : Velocidades)
//    - El inicializador se debe asignar a self el valor de velocidadInicial
// 
//Declara la clase: Auto
// - Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.
// 
//Las funciones o métodos que define la clase Auto son las siguientes:
// - init(), agrega la función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.
// - func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String), la función cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo: Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad. Si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.

import UIKit

class Auto
{
    var velocidad = Velocidades() //Una variable que sea una instancia de la enumeración Velocidades
    
    init()
    {
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad(actual : Int) {
        //return ("Actual: \(actual) y Velocidad en Cadena: \(velocidadEnCadena)")
        return actual
    }
}

enum Velocidades : Int
{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init()
    {
        self = .Apagado
    }
}

var velocidades = Velocidades()

var auto = Auto() //Creando instancia de la clase auto

var imp = auto.cambioDeVelocidad(0)

print(imp)




