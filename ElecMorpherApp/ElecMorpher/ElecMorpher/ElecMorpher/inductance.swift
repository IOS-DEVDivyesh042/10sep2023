import UIKit

class inductance: UIViewController {

    @IBOutlet weak var inductanceTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!

    let units = ["Henrys", "Millihenrys", "Microhenrys", "Kilohenrys", "Farads"]
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

        inductanceTextField.layer.borderColor = UIColor.black.cgColor
        inductanceTextField.layer.borderWidth = 2
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let text = inductanceTextField.text, let inputInductance = Double(text) {
            let selectedUnitIndex = unitPicker.selectedRow(inComponent: 0)
            let convertedInductance = inputInductance * conversionFactors[selectedUnitIndex]
            resultLabel.text = "\(inputInductance) \(units[selectedUnitIndex]) = \(convertedInductance) Henries"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

extension inductance: UIPickerViewDelegate, UIPickerViewDataSource {
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
