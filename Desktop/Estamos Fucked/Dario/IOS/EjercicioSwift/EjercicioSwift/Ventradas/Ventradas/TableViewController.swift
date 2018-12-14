
import UIKit

var tituloEventos = ["The Avengers","La Flauta Magica","El Clasico"]
var fechaEventos = ["24/5/2018", "1/9/2018", "28/10/2018"]
var precioEventos = ["9$","21$","84$"]
var myIndex = 0

class TableViewController: UITableViewController {
    
    //Aqui cargamos los datos al cargar la aplicacion
    override func viewWillAppear(_ animated: Bool) {
        cargarDatos()
    }

    //Aqui hacemos que se introduzca la entrada segun los titulos que tengamos
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tituloEventos.count
    }

    //Aqui introducimos los datos que queremos que aparezcan en la celda
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tituloEventos[indexPath.row] + " " + fechaEventos[indexPath.row]
        
        return cell
    }
    
    //Aqui hacemos que al seleccionar una celda nos lleve a otra pantalla
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}
