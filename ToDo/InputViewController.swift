//
//  InputViewController.swift
//  ToDo
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 1/2/19.
//  Copyright © 2019 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet weak var textFieldTitle: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldLocation: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var textFieldDescription: UITextField!
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
