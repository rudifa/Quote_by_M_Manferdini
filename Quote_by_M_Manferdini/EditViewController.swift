//
//  EditViewController.swift
//  Quote_by_M_Manferdini
//
//  Created by Rudolf Farkas on 19.06.18.
//  Copyright © 2018 Rudolf Farkas. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    var quote: Quote?
    
    @IBOutlet weak var editTextQuoteView: UITextView!

    @IBOutlet weak var authorTextView: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        editTextQuoteView.text = quote?.text
        authorTextView.text = quote?.author
    }

    @IBAction func saveQuoteButtonPressed(_ sender: Any) {
        
    }
}
