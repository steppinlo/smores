//
//  FirstViewController.swift
//  temp
//
//  Created by Apprentice on 4/17/15.
//  Copyright (c) 2015 Apprentice. All rights reserved.
//

import UIKit
import Parse

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Object has been saved.")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

