//
//  ViewController.swift
//  Quote_by_M_Manferdini
//
//  Created by Rudolf Farkas on 19.06.18.
//  Copyright © 2018 Rudolf Farkas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!

    let modelController = ModelController()

    override func viewDidLoad() {
        super.viewDidLoad()

        let quote = modelController.quote
        quoteTextLabel.text = quote.text
        quoteAuthorLabel.text = quote.author
    }

}

