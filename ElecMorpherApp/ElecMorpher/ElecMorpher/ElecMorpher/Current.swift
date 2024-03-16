import UIKit

class Current: UIViewController {
    
    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    let units = ["Amperes", "Milliamperes", "Microamperes", "Kiloamperes", "Milliampere Hours"]
    let conversionFactors: [Double] = [1.0, 1e3, 1e6, 1e-3, 3.6e6]
    
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
        
        currentTextField.layer.borderColor = UIColor.black.cgColor
        currentTextField.layer.borderWidth = 2
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let text = currentTextField.text, let inputCurrent = Double(text) {
            let selectedUnitIndex = unitPicker.selectedRow(inComponent: 0)
            let convertedCurrent = inputCurrent * conversionFactors[selectedUnitIndex]
            resultLabel.text = "\(inputCurrent) \(units[selectedUnitIndex]) = \(convertedCurrent) Amperes"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

extension Current: UIPickerViewDelegate, UIPickerViewDataSource {
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
