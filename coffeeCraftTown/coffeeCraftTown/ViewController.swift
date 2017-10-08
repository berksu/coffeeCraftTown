//
//  ViewController.swift
//  coffeeCraftTown
//
//  Created by Berksu on 08/10/2017.
//  Copyright © 2017 Berksu Kısmet. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    //testNumber 01
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        saveNewUser()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func saveNewUser(){
        let user = PFUser()
        user.email = "berksukismet@gmail.com"
        user.password = "123"
        user.username = user.email
        user["name"] = "Berksu"
        user["surname"] = "Kismet"
        user["age"]  = 1993
        user["gender"] = "male"
        user["QR"] = "berksu"
        user["point"] = 1
        
        user.signUpInBackground { (succeeded, error) -> Void in
            if error == nil {
                print("success")
            } else {
                print("\(String(describing: error))");
                // Show the errorString somewhere and let the user try again.
            }
        }
        
    }

}

