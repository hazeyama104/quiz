//
//  Quiz.swift
//  Quiz
//
//  Created by 櫨山沙希 on 2021/08/09.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName: String

    init( text: String, correctAnswer: Bool, imageName: String ) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}

