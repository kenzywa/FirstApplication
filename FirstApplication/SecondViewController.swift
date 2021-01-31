
import UIKit
 let firstTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
 let secondTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 25))

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Settings"
        
        firstTextField.center = CGPoint(x: 110 , y: 55)
        firstTextField.textAlignment = .center
        
    
        

       
    }
    
    
   
}
