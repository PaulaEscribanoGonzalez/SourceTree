import UIKit

class ShopItemViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var item: ShopItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.title = NSLocalizedString("item_detail_title", comment: "")
        
        if let item = item {
            if item.quantity > 0 {
                nameLabel.text = "\(item.name) (\(item.quantity))"
            } else {
                nameLabel.text = item.name
            }
        }
    }
}
