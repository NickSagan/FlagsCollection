//
//  DetailViewController.swift
//  Flags Collection
//
//  Created by Nick Sagan on 23.10.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    var selectedImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = UIImage(named: selectedImage)
        img.layer.borderColor = CGColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        img.layer.borderWidth = 1
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareFlag))
    }
    
    @objc func shareFlag() {
        if let image = img.image?.jpegData(compressionQuality: 1) {
            let vc = UIActivityViewController(activityItems: [image, selectedImage.uppercased()], applicationActivities: [])
            present(vc, animated: true)
        }
    }
    
}
