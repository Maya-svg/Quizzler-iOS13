//
//  Quiz Brain.swift
//  Quizzler-iOS13
//
//  Created by Owen Jones on 11/13/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Sacramento is the capital of California.", a: "True"),
        Question(q: "The California Quail is the State Bird.", a: "True"),
        Question(q: "The Garibaldi is the state saltwater fish.", a: "True"),
        Question(q: "California is the most populous state in the country.", a: "True"),
        Question(q: "California was the last state to join the United States.", a: "False"),
        Question(q: "California is considered the Golden State.", a: "True"),
        Question(q: "Christopher Columbus discovered California.", a: "False"),
        Question(q: "Gold was first discovered in California in 1849.", a: "True"),
        Question(q: "California is home to both the tallest and largest tree in the world.", a: "True"),
        Question(q: "Mount Whitney is the tallest mountain in the United States", a: "False"),
        Question(q: "The California State Bear is the Black Bear", a: "False"),
        Question(q: "'Eureka' is the state motto", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
       return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion()  {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
