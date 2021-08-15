//
//  ResultViewController.swift
//  Quiz
//
//  Created by 櫨山沙希 on 2021/08/09.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!

    var nameText: String = ""
    var score: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です。"

        var text =  ""
        switch self.score {
        case 0...2:
            text = "動物に関してあまり興味はないでしょうか？\n\nもっと頑張りましょう！"
        case 3,4:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case 5:
            text = "全問正解です！\n\nおめでとうございます！"
        default:
            break
        }
        self.textView.text = text
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

