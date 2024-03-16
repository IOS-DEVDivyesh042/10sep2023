//
//  Acetone.swift
//  ChemCoPro
//
//  Created by Manish Bhanushali on 21/10/23.
//



import UIKit

class Acetone: UIViewController {

    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input1lbl: UILabel!
    
    @IBOutlet weak var btn1 : UIButton!
    @IBOutlet weak var btn2 : UIButton!
    @IBOutlet weak var btn3 : UIButton!
    @IBOutlet weak var btn4 : UIButton!
    
    
    @IBOutlet weak var btnclr : UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        input1.delegate = self
        
        btn1.layer.cornerRadius = 20
        btn2.layer.cornerRadius = 20
        btn3.layer.cornerRadius = 20
        btn4.layer.cornerRadius = 20
        btnclr.layer.cornerRadius = 20
        
//
        
        
        
        
       // input1lbl.layer.borderColor = UIColor.black.cgColor
        input1lbl.layer.cornerRadius = 10
        input1lbl.layer.borderWidth = 1
        
        
//
//
        // Do any additional setup after loading the view.
    }
    
    @objc func buttonClicked(_ sender: UIButton) {
        UIView.animate(withDuration:0.0, animations: {
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
        
        if input1.text!.count == 0 {

                    let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                        
                    }))
                 
                    self.present(alert, animated: true, completion: nil)
        }else{
        
        var convertno = Float(input1.text!)!
        convertno = convertno * 5.808
        input1lbl.text = "\(convertno)"
        }
        
        
    }
    @IBAction func btn2(_ sender: Any) {
        if input1.text!.count == 0 {

                    let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                        
                    }))
                 
                    self.present(alert, animated: true, completion: nil)
        }else{
        
        var convertno = Float(input1.text!)!
        convertno = convertno * 5.808
        input1lbl.text = "\(convertno)"
        }
        
        
    }
    @IBAction func btn3(_ sender: Any) {
        if input1.text!.count == 0 {

                    let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                        
                    }))
                 
                    self.present(alert, animated: true, completion: nil)
        }else{
        var convertno = Float(input1.text!)!
        convertno = convertno * 58.08
        input1lbl.text = "\(convertno)"
        }
        
        
    }
    @IBAction func btn4(_ sender: Any) {
        
        if input1.text!.count == 0 {

                    let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                        
                    }))
                 
                    self.present(alert, animated: true, completion: nil)
        }else{
        var convertno = Float(input1.text!)!
        convertno = convertno * 58.08
        input1lbl.text = "\(convertno)"
            
        }
        
   
    }
    



}

extension Acetone : UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    
        if input1 == textField{
        let allowchar = "0123456789"
        let allowcharset = CharacterSet(charactersIn: allowchar)
        let typecharin = CharacterSet(charactersIn: string)
        let number = allowcharset.isSuperset(of: typecharin)
        return number
    }
    return true
}
}

