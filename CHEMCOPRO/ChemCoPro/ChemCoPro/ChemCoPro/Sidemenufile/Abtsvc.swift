
import UIKit

class Abtsvc: UIViewController {

    @IBOutlet weak var abvc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        abvc.layer.borderColor = UIColor.orange.cgColor
        abvc.layer.borderWidth = 2
        abvc.layer.cornerRadius = 5
        
    }
    

//    @IBAction func btnback(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as! ViewController
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
}
