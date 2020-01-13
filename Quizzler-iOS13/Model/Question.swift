//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Owen Jones on 11/12/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}
