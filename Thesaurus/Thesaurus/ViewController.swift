//
//  ViewController.swift
//  Thesaurus
//
//  Created by Space Ghost lantigua on 5/13/19.
//  Copyright © 2019 Carlos Lantigua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var thesaurusTextView: UITextView!
    @IBOutlet weak var thesaurusTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showSynonymsButtonTapped(_ sender: Any) {
        // it's possible for our textField to be blank, so we need to safely unwrap it before we try to pass the text through our synonyms func
        if let text = thesaurusTextField.text?.lowercased() {
            let synonymsArray = synonyms(for: text)
            let synonymsString = synonymsArray?.joined(separator: ", ")
            if synonymsString != nil {
                thesaurusTextView.text = synonymsString
            } else {
                thesaurusTextView.text = "No Synonyms Found"
            }
        }
    }
    

}

