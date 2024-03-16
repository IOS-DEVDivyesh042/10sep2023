import UIKit

class Charge: UIViewController {
    
    @IBOutlet weak var chargeTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    let units = ["Coulombs", "Microcoulombs", "Millicoulombs", "Kilocoulombs", "Faradays"]
    let conversionFactors: [Double] = [1.0, 1e6, 1e3, 1e-3, 9.6485e-4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        unitPicker.delegate = self
        unitPicker.dataSource = self
        unitPicker.layer.cornerRadius = 20
        unitPicker.layer.borderColor = UIColor.black.cgColor
        unitPicker.layer.borderWidth = 5
        
        chargeTextField.layer.backgroundColor = UIColor.white.cgColor
        chargeTextField.layer.borderWidth = 2
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let text = chargeTextField.text, let inputCharge = Double(text) {
            let selectedUnitIndex = unitPicker.selectedRow(inComponent: 0)
            let convertedCharge = inputCharge * conversionFactors[selectedUnitIndex]
            resultLabel.text = "\(inputCharge) \(units[selectedUnitIndex]) = \(convertedCharge) Coulombs"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

extension Charge: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return units.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return units[row]
    }
}
