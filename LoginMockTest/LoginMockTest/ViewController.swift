//
//  ViewController.swift
//  LoginMockTest
//
//  Created by Monica Mishipay on 16/08/21.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewModel()
    let testField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        viewModel.arrangedPalindrome("madam")
    }


//    func validateFields() {
//        viewModel.isValidEmail(email: testField.text!)
//
//
//        viewModel.proccedTheLoginProcess(userDetails: "abcd") {[weak self] modelObject in
//            guard let self = self else { return }
//
//            DispatchQueue.main.async {
//            self.testField.text = "Succes"
//            }
//        }
//
//
//    }


    

}

