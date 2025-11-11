import UIKit

class AddShopItemViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var quantityTextField: UITextField!
    
    var delegate: AddShopItemDelegate?
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        let name = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let quantityText = quantityTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
    
        if name.isEmpty || quantityText.isEmpty {
            showAlert(title: "Missing Information",
                      message: "Please fill in both name and quantity.")
            return
        }
        
        guard let quantity = Int(quantityText) else {
            showAlert(title: "Invalid Quantity",
                      message: "Please enter a valid number for the quantity.")
            return
        }
    
        let newItem = ShopItem(name: name, quantity: quantity)
        delegate?.addShopItem(newItem)
        
        dismiss(animated: true, completion: nil)
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}

