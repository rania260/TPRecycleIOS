
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var table: UITableView!
    //let data = ["rania","karima","imen","hamza","samir","ali"];
    
    struct data {
        let label : String;
        let immg : String
    }
    let array : [data] = [data(label: "Label 1",immg: "1"),
                          data(label: "Label 2",immg: "2"),
                          data(label: "Label 3",immg: "3")
    ];
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //data.count;
        array.count;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "ViewDetails") as? ViewControllerDetails{
            let val = array[indexPath.row]
            
            vc.img = UIImage(named: val.immg)!
            vc.labeel = val.label
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cellule = table.dequeueReusableCell(withIdentifier: "cell" , for: indexPath);
        //cellule.textLabel?.text = data[indexPath.row];
        //return cellule;
        let val = array[indexPath.row];
    
        let cellule = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! MyClasse
        cellule.lbl.text = val.label
        cellule.img.image = UIImage(named: val.immg)
        return cellule
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }



}

