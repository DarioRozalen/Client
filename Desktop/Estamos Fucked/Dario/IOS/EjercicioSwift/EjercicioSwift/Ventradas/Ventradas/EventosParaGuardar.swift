
import UIKit
import Foundation

class Eventos {
    
    var nombre : String
    var imagen : UIImage
    var numeroEntradas : String
    var codigoValidacionEntradas : String
    
    //Aqui iniciamos los atributos de las variablea anteriores
    init (nombre: String, imagen: UIImage, numeroEntradas : String, codigoValidacion : String){
        self.nombre = nombre
        self.imagen = imagen
        self.numeroEntradas = numeroEntradas
        self.codigoValidacionEntradas = codigoValidacion
    }
}
