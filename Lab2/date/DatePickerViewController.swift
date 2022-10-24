//
//  ViewController.swift
//  Lab2
//
//  Created by Mac on 10/21/22.
//

import UIKit

class DatePickerViewController: UIViewController {


    @IBOutlet weak var dataUIDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = NSDate()
        dataUIDatePicker.setDate(date as Date, animated: false)
    }


    @IBAction func onButtonClick(_ sender: Any) {

      
        let date = handleData()
    
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
            title: "Date and Time Selected",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "That's so true!",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func handleData() -> String
    {
        
        let dates = dataUIDatePicker.date
        let components = Calendar.current.dateComponents([.year,.month,.day,.hour, .minute], from: dates)
        let year = components.year!
        let month = components.month!
        let day = components.day!
        
        let hour = components.hour!
        let minute = components.minute!
        
        let formatData = "\(year)-\(month)-\(day)  \(hour):\(minute)"
       
        return formatData
    }
}

