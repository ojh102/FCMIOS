//
//  ViewController.swift
//  FcmIos
//
//  Created by 오재환 on 2016. 9. 18..
//  Copyright © 2016년 오재환. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    @IBOutlet weak var lblToken: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTokenTouch(_ sender: UIButton) {
        // [START get_iid_token]
        let token = FIRInstanceID.instanceID().token()
        print("InstanceID token: \(token!)")
        lblToken.text = token
        // [END get_iid_token]
    }
}

