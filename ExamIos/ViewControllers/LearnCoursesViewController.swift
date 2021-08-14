//
//  LearnCoursesViewController.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import UIKit

class LearnCoursesViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate, UIGestureRecognizerDelegate{
    
    let data = Data.shared
    var clickedIndex: Int = -1
    
    var button: UIButton = UIButton()
    
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
        clickedIndex = sender.tag
        
        /*let longPress : UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(gestureRecognizer:)))
        longPress.minimumPressDuration = 0.5
        longPress.delegate = self
        longPress.delaysTouchesBegan = true
        self.collectionView?.addGestureRecognizer(longPress)*/
        
        
        //let summaryDetailsViewController = LearnChaptersViewController(index: sender.tag)
        //summaryDetailsViewController.
        
        
        performSegue(withIdentifier: "showDetailsSegue", sender: nil)

        
        /*let destinationVC = LearnChaptersViewController()
        destinationVC.index = sender.tag

        destinationVC.performSegue(withIdentifier: "showDetailsSegue", sender: self)*/

        }
    
    /*@objc func handleLongPress(gestureRecognizer : UILongPressGestureRecognizer){
        if (gestureRecognizer.state != .began) {
            return
        }

        let p = gestureRecognizer.location(in: collectionView)

        if let indexPath = collectionView?.indexPathForItem(at: p) {
            print("Long press at item: \(indexPath.row)")
        }

    }*/
    
    
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
