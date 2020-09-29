//
//  GalleryController.swift
//  nourish
//
//  Created by Safiyah Lakhany on 7/17/19.
//  Copyright © 2019 Safiyah Lakhany. All rights reserved.
//

import UIKit

class GalleryController: UIViewController {
    

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.getImage(imageName: "test.png")
        
        
        // Do any additional setup after loading the view.
    }
    
    func getImage(imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
        if fileManager.fileExists(atPath: imagePath) {
            let image1=UIImage(contentsOfFile: imagePath)
            let newImage = UIImage(cgImage: (image1?.cgImage!)!, scale: (image1?.scale)!, orientation: .right)
            image.image = newImage
        }
        else {
            print("Oh no! No Image!")
        }

        // Do any additional setup after loading the view.
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
