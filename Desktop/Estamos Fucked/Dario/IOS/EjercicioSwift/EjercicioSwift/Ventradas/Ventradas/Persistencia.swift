
import UIKit
import Foundation

var nombreEvento = [String]()
var codigoEntrada = [String]()
var fotoEntrada = [UIImage]()

let fotoEvento = [#imageLiteral(resourceName: "The Avengers"),#imageLiteral(resourceName: "La Flauta Magica"),#imageLiteral(resourceName: "El Clasico")]
let persistencia = UserDefaults.standard

//Aqui creamos la funcion que nos guardar los parametros que le decimos
func guardarDatos(){

    persistencia.set(nombreEvento, forKey: "idEntradas" )
    persistencia.set(codigoEntrada, forKey: "idCodigoValidacion")
    
}

//Aqui creamos la funcion que nos cargara los datos
func cargarDatos(){
    
    if let datos = persistencia.array(forKey:"idEntradas") as? [String]
    {
        nombreEvento = datos
    }
    
    if let codigo = persistencia.array(forKey: "idCodigoValidacion") as? [String]
    {
        codigoEntrada = codigo
    }
    
    asociarImagenes()
}

//Aqui asociamos las imagenes para que aparezcan en las celdas
func asociarImagenes(){

    fotoEntrada.removeAll()
    
    for i in nombreEvento {

        switch i {

        case "The Avengers" :
            fotoEntrada.append(fotoEvento[0])
            break
        case "La Flauta Magica" :
            fotoEntrada.append(fotoEvento[1])
            break
        case "El Clasico" :
            fotoEntrada.append(fotoEvento[2])
            break
            
        default:
            break
        }
    }
}
