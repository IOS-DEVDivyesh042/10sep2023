import UIKit

class AcetoaceticAcid: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input1lbl: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btnclr: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        input1.delegate = self
        
        btn1.layer.cornerRadius = 20
        btn2.layer.cornerRadius = 20
        btn3.layer.cornerRadius = 20
        btn4.layer.cornerRadius = 20
        btnclr.layer.cornerRadius = 20

        input1lbl.layer.cornerRadius = 10
        input1lbl.layer.borderWidth = 1
    }
    
    @objc func buttonClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 0.0, animations: {
            sender.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }) { (_) in
            UIView.animate(withDuration: 0.2) {
                sender.transform = CGAffineTransform.identity
            }
        }
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        input1.text = ""
        input1lbl.text = "Output"
    }
    
    @IBAction func btn1(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 10.2088
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }
    
    @IBAction func btn2(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 10.2088
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }
    
    @IBAction func btn3(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 102.088
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }
    
    @IBAction func btn4(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 102.088
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }
    
    // Show an error alert for invalid input
    func showErrorAlert() {
        let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
