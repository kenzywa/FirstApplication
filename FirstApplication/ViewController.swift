//
//  ViewController.swift
//  FirstApplication
//
//  Created by Roman Shukailo on 27.01.21.
//

import UIKit

class ViewController: UIViewController {
    
    let firstLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
    
    let secondViewController = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let nextButton = UIBarButtonItem(barButtonSystemItem: .undo, target: self, action: #selector(selectorX))

        navigationItem.title = "My profile"
        navigationItem.rightBarButtonItem = nextButton
        
        //let firstLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        firstLabel.center = CGPoint(x: 200, y: 110)
        firstLabel.textAlignment = .center
        firstLabel.textColor = .blue
        firstLabel.font = .systemFont(ofSize: 20)
        firstLabel.text = "Hello new user!"
        self.view.addSubview(firstLabel)
    }
    
    @objc func selectorX() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

