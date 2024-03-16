import UIKit

class Electronicpo : UIViewController {

    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!

    let units = ["Volts", "Millivolts", "Microvolts", "Kilovolts", "Megavolts"]
    let conversionFactors: [Double] = [1.0, 1e3, 1e6, 1e-3, 1e-6]

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

        voltageTextField.layer.borderColor = UIColor.black.cgColor
        voltageTextField.layer.borderWidth = 2
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let text = voltageTextField.text, let inputVoltage = Double(text) {
            let selectedUnitIndex = unitPicker.selectedRow(inComponent: 0)
            let convertedVoltage = inputVoltage * conversionFactors[selectedUnitIndex]
            resultLabel.text = "\(inputVoltage) \(units[selectedUnitIndex]) = \(convertedVoltage) Volts"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

extension Electronicpo : UIPickerViewDelegate, UIPickerViewDataSource {
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
