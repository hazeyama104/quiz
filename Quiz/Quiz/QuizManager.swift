//
//  QuizManager.swift
//  Quiz
//
//  Created by 櫨山沙希 on 2021/08/09.
//

import UIKit

class QuizManager {
    var quizzes: [Quiz]
    var currentIndex: Int
    var score: Int

    enum Status {
        case inAnswer
        case done
    }
    var status: Status

    init() {
        quizzes = []
        // 問題文、正解、画像名 でクイズを作成
        quizzes.append(Quiz(text: "人間を超でっかいネコだと思っている？",
                                            correctAnswer: true, imageName: "cat"))
        quizzes.append(Quiz(text: "イヌは食べ物の美味しさを味よりも匂いで判断している？",
                                            correctAnswer: true, imageName: "dog"))
        quizzes.append(Quiz(text: "トラのしましま模様は皮膚まで 繋がっていない？",
                                            correctAnswer: false, imageName: "tiger"))
        quizzes.append(Quiz(text: "クマは走る時に全部の足がバラバラに動いている？",
                                            correctAnswer: true, imageName: "bear"))
        quizzes.append(Quiz(text: "パンダのいちばんの好物は笹である？",
                                            correctAnswer: false, imageName: "panda"))

        currentIndex = 0
        score  = 0
        status = .inAnswer
    }

    var currentQuiz: Quiz {
        get {
            return self.quizzes[currentIndex]
        }
    }

    func answerQuiz(answer: Bool) {
        if (self.currentQuiz.correctAnswer == answer) {
            score += 1
        }
    }

    func nextQuiz() {
        if currentIndex < quizzes.count - 1 {
            currentIndex += 1
        } else {
            status = .done
        }
    }
}



