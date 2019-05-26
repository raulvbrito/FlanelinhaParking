//
//  VehicleViewController.swift
//  FlanelinhaParking
//
//  Created by Adriano Mendes Marinheiro on 23/05/19.
//  Copyright © 2019 Flanelinha Co. All rights reserved.
//

import UIKit
import CoreData

class ParkingViewController: UIViewController {
    
    var parking: Parking?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
	@IBOutlet weak var cnpjTextField: UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let parking = parking {
            nameTextField.text = parking.name
            addressTextField.text = parking.address
            cnpjTextField.text = parking.cnpj
        }
    }
    
    @IBAction func save(_ sender: Any) {
        if parking == nil {
            parking = Parking(context: context)
        }
        parking?.name = nameTextField.text
        parking?.address = addressTextField.text
        parking?.cnpj = cnpjTextField.text
        
        do {
            try context.save()
            navigationController?.popViewController(animated: true)
        } catch {
            print(error)
        }
    }
    
}
