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
        Question(q: "Boston is the capital of Massachusetts", a: "True"),
        Question(q: "Boston was home to the first U.S. chocolate factory", a: "True"),
        Question(q: "Boston is also know as Beantown", a: "True"),
        Question(q: "California is the most populous state in the country", a: "True"),
        Question(q: "California is the poorest state in the United States", a: "False"),
        Question(q: "Christmas was once banned in Boston", a: "True"),
        Question(q: "The New England Patriots have 6 Super Bowl wins", a: "True"),
        Question(q: "Gold was first discovered in California in 1849", a: "True"),
        Question(q: "The John Hancock building is in California", a: "False"),
        Question(q: "Bostonians never walk", a: "False"),
        Question(q: "The California State Bear is the Black Bear", a: "False"),
        Question(q: "Eureka' is the Boston's state motto", a: "False")
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
