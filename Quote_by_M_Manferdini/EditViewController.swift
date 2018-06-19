//
//  EditViewController.swift
//  Quote_by_M_Manferdini
//
//  Created by Rudolf Farkas on 19.06.18.
//  Copyright © 2018 Rudolf Farkas. All rights reserved.
//

import UIKit

protocol EditViewControllerDelegate: class {
    func quoteWasSaved(quote: Quote)
}

class EditViewController: UIViewController {

    var quote: Quote?
    weak var delegate: EditViewControllerDelegate?
    
    @IBOutlet weak var quoteTextView: UITextView!
    @IBOutlet weak var authorTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        quoteTextView.text = quote?.text
        authorTextField.text = quote?.author
    }

    @IBAction func saveQuoteButtonPressed(_ sender: AnyObject) {
        let newQuote = Quote(text: quoteTextView.text, author: authorTextField.text!)
        delegate?.quoteWasSaved(quote: newQuote)
        self.navigationController?.popViewController(animated: true)
    }
}
