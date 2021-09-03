//
//  ViewController.swift
//  QueueImplementation
//
//  Created by Monica Mishipay on 02/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let weave = Weave()
        weave.checkForWeaveQueue()
        // Do any additional setup after loading the view.
    }


}

