//
//  LearnCoursesViewController.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import UIKit

class LearnCoursesViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate{
    
    let data = Data.shared
    var clickedIndex: Int = -1
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return data.summaries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LearnCoursesCollectionViewCell.identifier, for: indexPath) as! LearnCoursesCollectionViewCell
        
        cell.configure(with: data.summaries[indexPath.item].name)
        
        cell.button.tag = indexPath.item
        cell.button.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 180, height: 60)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? LearnChaptersViewController {
            vc.summary = data.summaries[clickedIndex]
        }
    }
    
    @objc func buttonClicked(_ sender: UIButton) {
        print(data.summaries[sender.tag].summary)
        clickedIndex = sender.tag
        
        //let summaryDetailsViewController = LearnChaptersViewController(index: sender.tag)
        //summaryDetailsViewController.
        performSegue(withIdentifier: "showDetailsSegue", sender: nil)

        /*let destinationVC = LearnChaptersViewController()
        destinationVC.index = sender.tag

        destinationVC.performSegue(withIdentifier: "showDetailsSegue", sender: self)*/

        }
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 180, height: 60)
        collectionView.collectionViewLayout = layout
        
        collectionView.register(LearnCoursesCollectionViewCell.nib(), forCellWithReuseIdentifier: LearnCoursesCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}
