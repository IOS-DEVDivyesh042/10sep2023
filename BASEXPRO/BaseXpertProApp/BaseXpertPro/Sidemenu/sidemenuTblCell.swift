

import UIKit

class sidemenuTblCell: UITableViewCell {

    @IBOutlet weak var imgSidemenu: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var myview : UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
 
        myview.layer.cornerRadius = 20
        myview.layer.borderWidth = 3
        myview.layer.borderColor = UIColor.yellow.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }

}
