//
//  ViewController.swift
//  Flags Collection
//
//  Created by Nick Sagan on 23.10.2021.
//

import UIKit

class ViewController: UITableViewController {
    
    let flagsArray = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        tableView.rowHeight = 50
        cell.imageView?.layer.borderWidth = 1
        cell.imageView?.layer.borderColor = CGColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        
        cell.imageView?.image = UIImage(named: flagsArray[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailViewController {
            vc.selectedImage = flagsArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }


    
}

