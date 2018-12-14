
import UIKit

class EntradasCompradas: UITableViewController {
    
    var invisible = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Aqui hacemos que el navigation nos lleve a la primera pantalla
    @IBAction func volverEventos(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    //Aqui hacemos que nos cree una celda por cada nombreEvento que cree
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombreEvento.count
    }

    //Aqui nos devuelve una celda con los datos que le pasamos
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.imageView?.image = fotoEntrada[indexPath.row]
        cell.textLabel?.text = nombreEvento[indexPath.row] + " " + codigoEntrada[indexPath.row]

        return cell
    }
}
