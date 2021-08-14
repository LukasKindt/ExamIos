//
//  AddSummaryViewController.swift
//  ExamIos
//
//  Created by Lukas Kindt on 12/08/2021.
//

import UIKit

class AddSummaryViewController: UIViewController {
    
    let data = Data.shared
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtSummary: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        if(txtTitle.hasText && txtSummary.hasText){
            let summary = Summary(name: txtTitle.text!, summary: txtSummary.text)
            data.summaries.append(summary)

            _ = navigationController?.popViewController(animated: true)
        }
    }
}
