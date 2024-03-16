//
//  ViewController.swift
//  ChemCoPro
//
//  Created by Manish Bhanushali on 21/10/23.
//

import UIKit

class ViewController: UIViewController {
    
   // @IBOutlet weak var viewww: UIView!
  //  @IBOutlet weak var vieimg: UIView!
    
    let imageNames = ["1", "3", "2", "4"]

    @IBOutlet weak var View1: UIView!
    
    //@IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var colleview: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
//        view2.layer.cornerRadius = 50
//        view2.layer.borderWidth = 5
//        view2.layer.borderColor = UIColor.black.cgColor
        View1.layer.cornerRadius = 20
        View1.layer.borderColor = UIColor.black.cgColor
        View1.layer.borderWidth = 5
        
        
        colleview.delegate = self
        colleview.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.collimage.image = UIImage(named: imageNames[indexPath.row])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Acetaminophen") as! Acetaminophen
            self.navigationController?.pushViewController(vc, animated: true)
        
        }else  if indexPath.row == 1{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Acetone") as! Acetone
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }else if indexPath.row == 2{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AcetoaceticAcid") as! AcetoaceticAcid
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 3{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Acidphosphatase") as! Acidphosphatase
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
            
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widthPerItem = collectionView.bounds.width/3.0

        return CGSize(width: 280, height: 200)

        
       // return CGSize(width: 300, height: 350)
 
    }
    

    
    
    
    
    
}

