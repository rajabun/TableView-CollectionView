//
//  ViewController2.swift
//  TableView&CollectionView
//
//  Created by Muhammad Rajab Priharsanto on 04/07/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UICollectionViewDataSource
{
    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage(named: "hongkong"), UIImage(named: "korea"), UIImage(named: "japan")]
    var name = ["Hongkong", "Korea", "Japan"]
    var destination = [Destination]()
    override func viewDidLoad()
    {
        super.viewDidLoad()

        for i in 0..<image.count
        {
            let data = Destination(image: image[i]!, name: name[i])
            destination.append(data)
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return destination.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell
        
        cell?.destinationImage.image = destination[indexPath.row].image
        cell?.destinationName.text = destination[indexPath.row].name
        return cell!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
