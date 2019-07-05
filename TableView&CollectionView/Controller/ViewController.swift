//
//  ViewController.swift
//  TableView&CollectionView
//
//  Created by Muhammad Rajab Priharsanto on 04/07/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = ["Fauzan","Kevin","Enjel"]
    var numberArray = [12345,12356,32142]
    
    var contact = [Contact]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<nameArray.count
        {
            let data = Contact(name:nameArray[i], number:numberArray[i])
            
            contact.append(data)
        }
    }
    
    //untuk return baris dalam tableview sesuai dengan isi arraynya
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return contact.count
    }
    
    //untuk memasukkan data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableViewCell
        
        cell?.nameLabel.text = contact[indexPath.row].name
        cell?.numberLabel.text = "\(contact[indexPath.row].number)"
        
        return cell!
    }
    /*
    //untuk menyesuaikan tinggi dari cell row secara manual
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80.0
    }
    */
}

