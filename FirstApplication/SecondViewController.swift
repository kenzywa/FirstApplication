
import UIKit
 let nameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 25))
 let surnameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 25))
 let nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 25))
 let surnameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 25))
 
class SecondViewController: UIViewController {
    
    weak var delegate: DataDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Settings"
        
        // MARK: TextFields
        nameTextField.center = CGPoint(x: 120, y: 120)
        nameTextField.textAlignment = .natural
        nameTextField.font = .systemFont(ofSize: 20)
        self.view.addSubview(nameTextField)
        
        surnameTextField.center = CGPoint(x: 140, y: 145)
        surnameTextField.textAlignment = .natural
        surnameTextField.font = .systemFont(ofSize: 20)
        self.view.addSubview(surnameTextField)
        
         // MARK: Labels
        nameLabel.text = "Name: "
        nameLabel.font = .systemFont(ofSize: 20)
        nameLabel.textAlignment = .natural
        nameLabel.center = CGPoint(x: 50, y: 120)
        self.view.addSubview(nameLabel)
        
        surnameLabel.text = "Surname: "
        surnameLabel.font = .systemFont(ofSize: 20)
        surnameLabel.textAlignment = .natural
        surnameLabel.center = CGPoint(x: 50, y: 145)
        self.view.addSubview(surnameLabel)
        
        // MARK: Buttons
        let saveButton = UIButton(frame: CGRect(x: 0, y: 0, width: 230 , height: 25))
        saveButton.center = CGPoint(x: 120, y: 170)
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.systemGray6, for: .normal)
        saveButton.backgroundColor = .systemGreen
        saveButton.addTarget(self, action: #selector(didTapSaveButton), for: .touchUpInside)
        self.view.addSubview(saveButton)
    }

    @objc func didTapSaveButton() {
        delegate?.toSaveData(name: nameTextField.text!, surname: surnameTextField.text!)
        
    }
    
    
    
    
   
}
