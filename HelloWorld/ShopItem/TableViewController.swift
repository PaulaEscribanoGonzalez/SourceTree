import UIKit

struct ShopItem {
    var name: String
    var quantity: Int
}

protocol AddShopItemDelegate: AnyObject {
    func addShopItem(_ item: ShopItem)
}

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @objc func addBarButtonTapped() {
        performSegue(withIdentifier: "AddShopItemSegue", sender: self)
    }

    var shopItems: [ShopItem] = [
        ShopItem(name: NSLocalizedString("pasta", comment: ""), quantity: 2),
        ShopItem(name: NSLocalizedString("bread", comment: ""), quantity: 1),
        ShopItem(name: NSLocalizedString("sugar", comment: ""), quantity: 0),
        ShopItem(name: NSLocalizedString("coffee", comment: ""), quantity: 3)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = NSLocalizedString("shop_list_title", comment: "")
        tableView.dataSource = self
        tableView.delegate = self
        
        let addBarButton = UIBarButtonItem(title: NSLocalizedString("add_button", comment: ""),
                                           style: .plain,
                                           target: self,
                                           action: #selector(addBarButtonTapped))
        navigationItem.rightBarButtonItem = addBarButton
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue" {
            if let detailVC = segue.destination as? ShopItemViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                detailVC.item = shopItems[indexPath.row]
            }
        } else if segue.identifier == "AddShopItemSegue" {
            if let addVC = segue.destination as? AddShopItemViewController {
                addVC.delegate = self
            }
        }
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = shopItems[indexPath.row]
        if item.quantity > 0 {
            cell.textLabel?.text = "\(item.name) (\(item.quantity))"
        } else {
            cell.textLabel?.text = item.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Touched: \(shopItems[indexPath.row].name)")
    }
}

extension TableViewController: AddShopItemDelegate {
    func addShopItem(_ item: ShopItem) {
        shopItems.append(item)
        tableView.reloadData()
    }
}
