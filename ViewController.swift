//
//  ViewController.swift
//  dev-epic1-UI
//
//  Created by Mayur Beldar on 9/14/18.
//  Copyright © 2018 Mayur Beldar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let arrayOfImages:[String] = ["1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2","1", "2"]
    
 
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let itemSize = UIScreen.main.bounds.width/3-3
        
        let layout = UICollectionViewFlowLayout()
        
       
        layout.itemSize = CGSize (width: itemSize, height: itemSize)
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        
        myCollectionView.collectionViewLayout = layout;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named: "pictures/"+arrayOfImages[indexPath.row]+".jpg")
        
        return cell;
    }
    
}

