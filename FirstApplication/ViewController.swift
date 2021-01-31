//
//  ViewController.swift
//  FirstApplication
//
//  Created by Roman Shukailo on 27.01.21.
//

import UIKit

class ViewController: UIViewController {
    
    let firstLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
    
 
    
    
    override func viewWillLayoutSubviews() {
        let width = self.view.frame.width
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 10, width: width , height: 30))
        self.view.addSubview(navigationBar)
        let navigationItem = UINavigationItem(title: "My profile")
        let nextButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.undo, target: nil, action: #selector(selectorX))
        navigationItem.rightBarButtonItem = nextButton
        navigationBar.setItems([navigationItem], animated: false)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let firstLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        firstLabel.center = CGPoint(x: 170, y: 85)
        firstLabel.textAlignment = .natural
        firstLabel.textColor = .blue
        firstLabel.font = .systemFont(ofSize: 20)
        firstLabel.text = "Hello new user!"
        self.view.addSubview(firstLabel)
        
        let SecondVC = UIStoryboard( name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(SecondVC, animated: true)
        
    }
    @objc func selectorX() {
        print("hello")
        
    }
    

}

