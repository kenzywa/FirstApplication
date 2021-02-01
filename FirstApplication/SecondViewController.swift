
import UIKit
 let nameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 25))
 let surnameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 25))
 let nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 25))
 let surnameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 25))
 
class SecondViewController: UIViewController {
    private weak var delegate: DataDelegate?
    
    init(delegate: DataDelegate?) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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

    @objc private func didTapSaveButton()
    {
        guard let name = nameTextField.text,
              let surname = surnameTextField.text else {
            return
        }
        delegate?.toSaveData(name: name, surname: surname)
    }
}
