//
//  SecondViewController.swift
//  sc
//
//  Created by Paul Contreras on 06/03/23.
//

import Cocoa
import Swift

let options: [String] = ["Intendencia", "Asistente","Administrador","Directivo","Gerente"]

let Intendencia = 35

func addItems(withTitles itemTitles: [String]){
    
}


func getHours(hours: Int)->Int{
    return hours
}

func calcSalary(job: Int, hours: Int){
    
}




class SecondViewController: NSViewController {
    
    

    
    @IBOutlet var pagoAnual: NSTextField!
    @IBOutlet var pagoMes: NSTextField!
    @IBOutlet var pagoQuin: NSTextField!
    @IBOutlet var pagoSem: NSTextField!
    @IBOutlet var pagoJor: NSTextField!
    @IBOutlet weak var jobPicker: NSPopUpButton!
    @IBOutlet var numHours: NSTextField!
    @IBOutlet var calcBTN: NSButton!
    
    
    
    @IBAction func calcular(_ sender: Any) {
        
        
        let job = jobPicker.intValue
        let nH = numHours.intValue
        let HorasTrabajas = getHours(hours: Int(nH))
        print(HorasTrabajas)
        print(job)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        jobPicker.addItems(withTitles: options)
        
    }
    
}
