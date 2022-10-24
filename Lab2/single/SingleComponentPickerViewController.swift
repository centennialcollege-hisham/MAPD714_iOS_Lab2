//
//  SingleViewController.swift
//  Lab2
//
//  Created by Hisham Sanimeh on 10/21/22.
//

import UIKit

class SingleComponentPickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePickerView: UIPickerView!
  
    private let characterNames = ["Luke", "Leia", "Han", "Chewbacca", "Artoo","Threepio", "Lando"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
    
   
    @IBAction func onClickButton(_ sender: Any) {
        let row = singlePickerView.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for choosing",
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
   
    
   

  
}
