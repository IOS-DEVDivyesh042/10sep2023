//
//  ViewController.swift
//  ElecMorpher
//
//  Created by Manish Bhanushali on 29/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    
    @IBOutlet weak var btn4: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        btn1.layer.cornerRadius = 20
        btn1.layer.borderColor = UIColor.purple.cgColor
        btn1.layer.borderWidth = 5
        btn4.layer.cornerRadius = 20
        btn4.layer.borderColor = UIColor.purple.cgColor
        btn4.layer.borderWidth = 5
        btn3.layer.cornerRadius = 20
        btn3.layer.borderColor = UIColor.purple.cgColor
        btn3.layer.borderWidth = 5
        btn2.layer.cornerRadius = 20
        btn2.layer.borderColor = UIColor.purple.cgColor
        btn2.layer.borderWidth = 5
        // Do any additional setup after loading the view.
    }

    @IBAction func chabtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Charge")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func currbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Current")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func indbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "inductance")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func elepbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Electronicpo")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    
    
    
    
    
    
    

}

