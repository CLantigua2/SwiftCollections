//
//  Thesaurus.swift
//  Thesaurus
//
//  Created by Space Ghost lantigua on 5/13/19.
//  Copyright © 2019 Carlos Lantigua. All rights reserved.
//

import Foundation

let synonyms = [
    "swift" : [
        "abrupt", "expeditious", "hasty", "nimble", "quick", "rapid", "speedy", "sudden", "unexpected"
    ],
    "objective" : [
        "detached", "disinterested", "dispassionate", "equitable", "evenhanded", "nonpartisan", "open-minded", "unbiased"
    ],
    "calculate" : [
        "adjust", "appraise", "consider", "count", "determine", "forecast", "gauge", "guess", "measure", "multiply", "reckon", "subtract", "tally", "weigh", "work out"
    ],
    "create" : [
        "build", "conceive", "constitute", "construct", "design", "devise", "discover", "establish", "forge", "form"
    ]
]

// This function is going to take in a search term and return an array of the synonyms associated with the key

func synonyms(for string: String) -> [String]? {
    
    // Because it's possible that the key we enter doesn't exist in the dict, we need to safely unwrap the array of strings.
    if let synonymsArray = synonyms[string] {
        return synonymsArray
    } else {
        return nil
    }
}
