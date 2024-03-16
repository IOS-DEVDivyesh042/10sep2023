//
//  Acetaminophen.swift
//  ChemCoPro
//
//  Created by Manish Bhanushali on 21/10/23.
//

//import UIKit
//
//class Acetaminophen: UIViewController {
//
//
//        @IBOutlet weak var input1: UITextField!
//
//        @IBOutlet weak var input1lbl: UILabel!
//
//        @IBOutlet weak var btn1 : UIButton!
//        @IBOutlet weak var btn2 : UIButton!
//        @IBOutlet weak var btn3 : UIButton!
//        @IBOutlet weak var btn4 : UIButton!
//
//
//        @IBOutlet weak var btnclr : UIButton!
//
//
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//
//            //input1.delegate = self
//
//           // btnclr.layer.cornerRadius = 10
//
////            btn1.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
////            btn2.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
////            btn3.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
////            btn4.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
//
//
//
//
//
//
////           // input1lbl.layer.borderColor = UIColor.black.cgColor
////            input1lbl.layer.cornerRadius = 10
////            input1lbl.layer.borderWidth = 1
////
//
//    //
////            btn1.layer.cornerRadius = 20
////            //btn1.layer.borderWidth = 1
////           // btn1.layer.borderColor = UIColor.black.cgColor
////            btn2.layer.cornerRadius = 20
////            //btn2.layer.borderWidth = 1
////            //btn2.layer.borderColor = UIColor.black.cgColor
////            btn3.layer.cornerRadius = 20
////            //btn3.layer.borderWidth = 1
////            //btn3.layer.borderColor = UIColor.black.cgColor
////            btn4.layer.cornerRadius = 20
////           // btn4.layer.borderWidth = 1
//            //btn4.layer.borderColor = UIColor.black.cgColor
//            // Do any additional setup after loading the view.
//        }
//
//        @objc func buttonClicked(_ sender: UIButton) {
//            UIView.animate(withDuration:0.0, animations: {
//                sender.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
//            }) { (_) in
//                UIView.animate(withDuration: 0.2) {
//                    sender.transform = CGAffineTransform.identity
//                }
//            }
//        }
//
////        @IBAction func clearButtonTapped(_ sender: UIButton) {
////            input1.text = ""
////            input1lbl.text = ""
////        }
//
//
//        @IBAction func btn1(_ sender: Any) {
//
//            if input1.text!.count == 0 {
//
//                        let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
//
//                        }))
//
//                        self.present(alert, animated: true, completion: nil)
//            }else{
//
//            var convertno = Float(input1.text!)!
//            convertno = convertno * 0.1
//            input1lbl.text = "\(convertno)"
//            }
//
//
//        }
//        @IBAction func btn2(_ sender: Any) {
//            if input1.text!.count == 0 {
//
//                        let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
//
//                        }))
//
//                        self.present(alert, animated: true, completion: nil)
//            }else{
//
//            var convertno = Float(input1.text!)!
//            convertno = convertno * 10
//            input1lbl.text = "\(convertno)"
//            }
//
//
//        }
//        @IBAction func btn3(_ sender: Any) {
//            if input1.text!.count == 0 {
//
//                        let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
//
//                        }))
//
//                        self.present(alert, animated: true, completion: nil)
//            }else{
//            var convertno = Float(input1.text!)!
//            convertno = convertno * 10
//            input1lbl.text = "\(convertno)"
//            }
//
//
//        }
//        @IBAction func btn4(_ sender: Any) {
//
//            if input1.text!.count == 0 {
//
//                        let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
//
//                        }))
//
//                        self.present(alert, animated: true, completion: nil)
//            }else{
//            var convertno = Float(input1.text!)!
//            convertno = convertno * 10
//            input1lbl.text = "\(convertno)"
//
//            }
//
//
//        }
//
//
//
//
//    }
//
//    extension Acetaminophen : UITextFieldDelegate{
//
//        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//
//
//            if input1 == textField{
//            let allowchar = "0123456789"
//            let allowcharset = CharacterSet(charactersIn: allowchar)
//            let typecharin = CharacterSet(charactersIn: string)
//            let number = allowcharset.isSuperset(of: typecharin)
//            return number
//        }
//        return true
//    }
//    }
//
import UIKit

class Acetaminophen: UIViewController {

    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input1lbl: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btnclr: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the delegate for the input field to handle input restrictions.
        input1.delegate = self
        btn1.layer.cornerRadius = 20
        btn2.layer.cornerRadius = 20
        btn3.layer.cornerRadius = 20
        btn4.layer.cornerRadius = 20
        btnclr.layer.cornerRadius = 20
        
        input1lbl.layer.cornerRadius = 10
        input1lbl.layer.borderWidth = 1
        

        // Other setup code for your buttons, labels, and animations can go here.
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
            let result = convertno *  0.1512
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }

    @IBAction func btn2(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 0.1512
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }

    @IBAction func btn3(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 0.0151
            input1lbl.text = "\(result)"
        } else {
            showErrorAlert()
        }
    }

    @IBAction func btn4(_ sender: Any) {
        if let inputText = input1.text, !inputText.isEmpty, let convertno = Float(inputText) {
            let result = convertno * 0.0151
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

extension Acetaminophen: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == input1 {
            let allowchar = "0123456789"
            let allowcharset = CharacterSet(charactersIn: allowchar)
            let typecharin = CharacterSet(charactersIn: string)
            let number = allowcharset.isSuperset(of: typecharin)
            return number
        }
        return true
    }
}
