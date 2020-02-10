import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var ivYou: UIImageView!
    @IBOutlet weak var lbMessage: UILabel!
    @IBOutlet weak var ivMe: UIImageView!
    @IBOutlet weak var uvMessage: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
