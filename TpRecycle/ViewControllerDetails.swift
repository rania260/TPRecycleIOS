import UIKit

class ViewControllerDetails: UIViewController {

    @IBOutlet weak var ImageDetails: UIImageView!
    
    @IBOutlet weak var labelDetails: UILabel!
    
    var img = UIImage()
    var labeel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ImageDetails.image = img
        labelDetails.text = labeel
    }

}
