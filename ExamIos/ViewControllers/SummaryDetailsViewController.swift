//
//  LearnChaptersViewController.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import UIKit

class LearnChaptersViewController: UIViewController {

    let data = Data.shared
    var summary: Summary = Summary(name: "temporary", summary: "temporary")
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = summary.name
        lblSummary.numberOfLines = 0
        lblSummary.text = summary.summary
    }

}
