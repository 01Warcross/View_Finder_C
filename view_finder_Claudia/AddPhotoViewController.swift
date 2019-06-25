//
//  AddPhotoViewController.swift
//  view_finder_Claudia
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    var imagePicker = UIImagePickerController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBOutlet weak var ChangePhoto: UIImageView!
    
    @IBAction func TakePhoto(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker,animated :true,completion: nil)
    }
    
    @IBAction func FindPhoto(_ sender: Any) {imagePicker.sourceType = .photoLibrary
        present (imagePicker, animated : true, completion: nil)
    }
    
    @IBAction func SavePhoto(_ sender: Any) {
        
    }
    private func imagePickerControllerDidCancel(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            ChangePhoto.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
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


