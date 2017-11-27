//
//  MainNavigationController.swift
//  audible
//
//  Created by Shree on 22/11/17.
//  Copyright © 2017 Shree. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        if isLoggedIn(){
            //assume user is logged in
            let homeController = HomeController()
            viewControllers = [homeController]
        }
        else{
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool{
        return UserDefaults.standard.isLoggedIn()
    }
    
    func showLoginController(){
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            //perhaps we'll do something here latere
        })
    }
}






