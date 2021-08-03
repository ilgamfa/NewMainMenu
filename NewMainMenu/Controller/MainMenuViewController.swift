//
//  ViewController.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 28.07.2021.
//

import UIKit

class MainMenuViewController: UIViewController {

    var mainMenuView: MainMenuView! {return self.view as? MainMenuView }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroungColor")
        
        
    }
    
    override func loadView() {
        self.view = MainMenuView(frame: UIScreen.main.bounds)
    }
}
