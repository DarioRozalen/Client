
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tituloEvento: UILabel!
    @IBOutlet weak var imagenEvento: UIImageView!
    @IBOutlet weak var fechaEvento: UILabel!
    @IBOutlet weak var precioEvento: UILabel!
    @IBOutlet weak var entradasLabel: UILabel!
    @IBOutlet weak var stepperEntradas: UIStepper!
    @IBOutlet weak var codigoAleatorio: UILabel!
    
    var textoCodigo = [String]()
    var datoIndividual = "a"
    
    //En esta funcion haremos que al darle al boton de comprar nos aparezca el codigo de compra aleatorio
    @IBAction func comprarBtn(_ sender: UIButton) {
        codigoAleatorio.isHidden = false
        textoCodigo.append(codigoRandom(length: 5))
        codigoAleatorio.text = "Codigo: \(String(describing: textoCodigo.last!))"
    }
    
    //Aqui podremos elegir el numero de entradas mediante un stepper
    @IBAction func cantidadEntradas(_ sender: UIStepper) {
        entradasLabel.text = String(Int(sender.value))
    }
    
    //Aqui cargamos los datos de las entradas
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tituloEvento.text = tituloEventos[myIndex]
        fechaEvento.text = fechaEventos[myIndex]
        precioEvento.text = precioEventos[myIndex]
        imagenEvento.image = UIImage(named: tituloEventos[myIndex] + ".jpg" )
    }

    //Aqui pasamos la informacion a la siguiente pantalla ademas de guardar los datos de la entrada
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destino = segue.destination as! EntradasCompradas
        nombreEvento.append(tituloEvento.text!)
        fotoEntrada.append(imagenEvento.image!)
        codigoEntrada.append(codigoAleatorio.text!)
        destino.invisible = datoIndividual
        guardarDatos()
    }
    
    //Aqui generamos el codigo aleatorio
    func codigoRandom(length: Int) -> String {
        let charactersString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let charactersArray : [Character] = Array(charactersString.characters)
        
        var stringAleatorio = ""
        for _ in 0..<length {
                stringAleatorio.append(charactersArray[Int(arc4random()) % charactersArray.count])
            }
            return stringAleatorio
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

