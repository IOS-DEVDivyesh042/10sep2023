//
//  ViewController.swift
//  BaseXpertPro
//
//  Created by Manish Bhanushali on 20/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btn11: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    
    @IBOutlet weak var btn3: UIButton!
    
    
    
    @IBOutlet weak var btn4: UIButton!
    
    
    
    @IBOutlet weak var btn5: UIButton!
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    
    @IBOutlet weak var view6: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn11.layer.cornerRadius = 20
        btn3.layer.cornerRadius = 20
        btn4.layer.cornerRadius = 20
        btn2.layer.cornerRadius = 20
        btn5.layer.cornerRadius = 20
        
        view5.layer.cornerRadius = 15
        view5.layer.borderColor = UIColor.black.cgColor
        view5.layer.borderWidth = 4
        view4.layer.cornerRadius = 15
        view4.layer.borderColor = UIColor.black.cgColor
        view4.layer.borderWidth = 4
        view3.layer.cornerRadius = 15
        view3.layer.borderColor = UIColor.black.cgColor
        view3.layer.borderWidth = 4
        view2.layer.cornerRadius = 15
        view2.layer.borderColor = UIColor.black.cgColor
        view2.layer.borderWidth = 4
        view1.layer.cornerRadius = 15
        view1.layer.borderColor = UIColor.black.cgColor
        view1.layer.borderWidth = 4
        view6.layer.cornerRadius = 15
        view6.layer.borderColor = UIColor.black.cgColor
        view6.layer.borderWidth = 4
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btod(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "BtoD")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func dtoh(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "DtoH")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func hto0(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "HtoO")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func otob(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "OtoB")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func otod(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "OtoD")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    

}

