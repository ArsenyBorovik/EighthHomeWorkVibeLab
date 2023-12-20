//
//  ViewController3.swift
//  EighthHomeWorkVibeLab
//
//  Created by Арсений on 12/20/23.
//

import UIKit

class ViewController3: UIViewController {
    
    lazy var pressBackButton: UIButton = {
        let action = UIAction { _ in
            self.navigationController?.popViewController(animated: true)
        }
        let button = UIButton(type: .custom, primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("PressBack", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(pressBackButton)
        NSLayoutConstraint.activate([
            pressBackButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pressBackButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pressBackButton.widthAnchor.constraint(equalToConstant: 100),
            pressBackButton.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
