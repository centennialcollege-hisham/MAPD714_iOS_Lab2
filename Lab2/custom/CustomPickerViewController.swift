//
//  CustomPickerViewController.swift
//  Pickers
//
//  Created by Hisham Sanimeh on 10/22/22.
//

import UIKit

class CustomPickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    @IBOutlet weak var customUIPickerView: UIPickerView!
    
    private let fillingComponent = 0
    private let breadComponent = 1
    
   
    
    var customPickerList = [CustomModel]()
    var customPickerList2 = [CustomModel]()
    var customPickerList3 = [CustomModel]()
    var customPickerList4 = [CustomModel]()
    var customPickerList5 = [CustomModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customUIPickerView.delegate = self
        customUIPickerView.dataSource = self
        initTableData()
    }
    
    func initTableData(){
        customPickerList.append(CustomModel.init( image:UIImage(named: "cherry")!,sulg: "admin"))
        customPickerList.append(CustomModel.init( image:UIImage(named: "bar")! , sulg: "trainee") )
        customPickerList.append(CustomModel.init( image:UIImage(named: "lemon")! ,sulg: "instructor"))
        customPickerList.append(CustomModel.init( image:UIImage(named: "seven")! , sulg: "employee") )
        customPickerList.append(CustomModel.init( image:UIImage(named: "crown")! , sulg: "enquirie") )
          
        
        customPickerList2.append(CustomModel.init( image:UIImage(named: "seven")! , sulg: "employee") )
        customPickerList2.append(CustomModel.init( image:UIImage(named: "crown")! , sulg: "enquirie") )
        customPickerList2.append(CustomModel.init( image:UIImage(named: "bar")! , sulg: "trainee") )
        customPickerList2.append(CustomModel.init( image:UIImage(named: "lemon")! ,sulg: "instructor"))
        customPickerList2.append(CustomModel.init( image:UIImage(named: "cherry")!,sulg: "admin"))
        
    
        customPickerList3.append(CustomModel.init( image:UIImage(named: "cherry")!,sulg: "admin"))
        customPickerList3.append(CustomModel.init( image:UIImage(named: "bar")! , sulg: "trainee") )
        customPickerList3.append(CustomModel.init( image:UIImage(named: "lemon")! ,sulg: "instructor"))
        customPickerList3.append(CustomModel.init( image:UIImage(named: "seven")! , sulg: "employee") )
        customPickerList3.append(CustomModel.init( image:UIImage(named: "crown")! , sulg: "enquirie") )
        
        customPickerList4.append(CustomModel.init( image:UIImage(named: "cherry")!,sulg: "admin"))
        customPickerList4.append(CustomModel.init( image:UIImage(named: "bar")! , sulg: "trainee") )
        customPickerList4.append(CustomModel.init( image:UIImage(named: "lemon")! ,sulg: "instructor"))
        customPickerList4.append(CustomModel.init( image:UIImage(named: "seven")! , sulg: "employee") )
        customPickerList4.append(CustomModel.init( image:UIImage(named: "crown")! , sulg: "enquirie") )
          
        customPickerList5.append(CustomModel.init( image:UIImage(named: "seven")! , sulg: "employee") )
        customPickerList5.append(CustomModel.init( image:UIImage(named: "crown")! , sulg: "enquirie") )
        customPickerList5.append(CustomModel.init( image:UIImage(named: "bar")! , sulg: "trainee") )
        customPickerList5.append(CustomModel.init( image:UIImage(named: "lemon")! ,sulg: "instructor"))
        customPickerList5.append(CustomModel.init( image:UIImage(named: "cherry")!,sulg: "admin"))
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return customPickerList.count
    }
  

    
    @IBAction func onCilckButton(_ sender: Any) {
        let fillingRow =
        customUIPickerView.selectedRow(inComponent: fillingComponent)
        let breadRow =
        customUIPickerView.selectedRow(inComponent: breadComponent)
        
        let filling = customPickerList[fillingRow]
        let bread = customPickerList[breadRow]
        let message = "Your \(filling) on \(bread) bread will be right up."
        
        let alert = UIAlertController(
            title: "Thank you for your order",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Great",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let image : UIImage
        
         switch component {
        case 0 :
             image = customPickerList[row].image
        case 1 :
             image =  customPickerList2[row].image
          
        case 2 :
             image =  customPickerList3[row].image
        case 3 :
             image =  customPickerList4[row].image
          case 4 :
             image =  customPickerList5[row].image
          
    
         default:
             image = customPickerList[row].image
         }
        
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        let view = UIView()
        view.addSubview(imageView)
        return view
            
      
     
    }

    
    
  
  
}
