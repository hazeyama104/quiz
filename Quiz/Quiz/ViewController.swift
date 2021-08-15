//
//  ViewController.swift
//  Quiz
//
//  Created by 櫨山沙希 on 2021/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    let manager: QuizManager = QuizManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let quizViewController = segue.destination as? QuizViewController {
             if let text = self.nameTextField.text {
                 quizViewController.nameText = text
             }
         }
     }

    @IBAction func puressButton(_ sender: Any) {
    }
}

