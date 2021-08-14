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
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtSummary: UITextView!
    //@IBOutlet weak var lblSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = summary.name
        //txtSummary.numberOfLines = 0
        txtSummary.text = summary.summary
        
        let contentRect: CGRect = scrollView.subviews.reduce(into: .zero) { rect, view in
            rect = rect.union(view.frame)
        }
        scrollView.contentSize = contentRect.size
    }

}
