//
//  LearnCoursesCollectionViewCell.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import UIKit

class LearnCoursesCollectionViewCell: UICollectionViewCell {

    @IBOutlet var button: UIButton!
    
    static let identifier = "LearnCoursesCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with course: String){
        button.setTitle(course, for: .normal)
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "LearnCoursesCollectionViewCell", bundle: nil)
    }

}
