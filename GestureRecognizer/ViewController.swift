//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Ali serkan Boyracı  on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    var number = 0
    //var pic = true // to do it with two pictures.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true // to use tapped image.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        // target VC nin kendisi yani self
        
        // to add gestureRecognizer to imageView you have to use this style.
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
    }
    
    @objc func changePic() {
        //if pic == true {
        if number == 0 {
            imageView.image = UIImage(named: "haluklevent")
            nameLabel.text = "Haluk LEVENT"
            number += 1
            // pic = false
        } else if number == 1 {
            imageView.image = UIImage(named: "tarkan")
            nameLabel.text = "TARKAN"
            number += 1
            
        } else {
            imageView.image = UIImage(named: "teoman")
            nameLabel.text = "TEOMAN"
            number -= 2
            // pic = true
        }
       // burda resim sayisini ekledikce artacak sekilde otomatize edilir mi ? sonradan denenmeli
        
        
    }


}

