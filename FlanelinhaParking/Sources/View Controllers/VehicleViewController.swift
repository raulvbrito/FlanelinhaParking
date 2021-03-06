//
//  VehicleViewController.swift
//  FlanelinhaParking
//
//  Created by Adriano Mendes Marinheiro on 23/05/19.
//  Copyright © 2019 Raul Brito. All rights reserved.
//

import UIKit
import CoreData

class ParkingViewController: UIViewController {
    
    var vehicle: Parking?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var plateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let vehicle = vehicle {
            nameTextField.text = vehicle.name
            plateTextField.text = vehicle.plate
        }
    }
    
    @IBAction func save(_ sender: Any) {
        if vehicle == nil {
            vehicle = Parking(context: context)
        }
        vehicle?.name = nameTextField.text
        vehicle?.plate = plateTextField.text
        
        do {
            try context.save()
            navigationController?.popViewController(animated: true)
        } catch {
            print(error)
        }
    }
    
}
