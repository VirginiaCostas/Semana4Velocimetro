/*

Velocímetro: Virginia Costas

Tareas:

1.- Crear una enumeración velocidades de tipo Int.


2.- Crear una clase auto con las siguientas características:

2.1.- Atributos, Instancia de una enumeración velocidades llamada velocidad.

2.2.- Métodos:
init() que cree la instancia de velocidades iniciando en apagado.
NOTA: Se ha tomado la descisión de imprimir 0, Apagado para que la salida de la consola de la prueba coincida con la salida de la consola de la tarea, toda vez, que la llamada a la función cambioDeVelocidad empieza imprimiendo 20, VelocidadBaja.

cambioDeVelocidad()-> (actual:Int, velocidadEnCadena:String)
Cambia el valor de la velocidad a la siguiente velocidad gradual. Si llega a velocidadAlta cambia a velocidadMedia, debe regresar una tupla con la velocidad actual y una cadena con la velocidad correspondiente.
*/


enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        
        self = velocidadInicial
    }
}


class Auto {
    var velocidad: Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        print("\(velocidad.rawValue), \(velocidad)")
    }
    
    func cambioDeVelocidad() ->(actual: Int, velocidadEnCadena: String){
        
        if self.velocidad == Velocidades.Apagado{
            
            self.velocidad = Velocidades.VelocidadBaja
            
        }else if self.velocidad == Velocidades.VelocidadBaja || self.velocidad == Velocidades.VelocidadAlta{
            
            self.velocidad = Velocidades.VelocidadMedia
            
        }else if self.velocidad == Velocidades.VelocidadMedia{
            
            self.velocidad = Velocidades.VelocidadAlta
            
        }
        
        return (velocidad.rawValue,"\(velocidad)")
    }
}

//main

var auto = Auto()

for index in 1...20{
    let tupla = auto.cambioDeVelocidad()
    print("\(tupla.0), \(tupla.1)")
}



