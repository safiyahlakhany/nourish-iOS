//
//  UploadController.swift
//  nourish
//
//  Created by GWC on 7/16/19.
//  Copyright © 2019 Safiyah Lakhany. All rights reserved.
//

import UIKit

class UploadController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var image: UIImageView!
     var imagePickerController: UIImagePickerController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func take(_ sender: Any) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }/*
    @IBAction func use(_ sender: Any) {
        saveIm(name: "test.png")
    }
    
    func saveIm(name:String) {
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask,
                                                             true)[0] as NSString).appendingPathComponent(name)
        let im = image.image!
        let imageData = im.pngData()
        fileManager.createFile(atPath: imagePath as String, contents: imageData, attributes: nil)
    }
    */
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        image.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
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
