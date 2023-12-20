//
//  ViewController2.swift
//  EighthHomeWorkVibeLab
//
//  Created by Арсений on 12/20/23.
//

import UIKit

class ViewController2: UIViewController {
    
    lazy var backButton: UIButton = {
        let action = UIAction { _ in
            self.dismiss(animated: true, completion: nil)
        }
        
        let button = UIButton(type: .custom, primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Close", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backButton.widthAnchor.constraint(equalToConstant: 80),
            backButton.heightAnchor.constraint(equalToConstant: 80)
        ])
        
    }

}
