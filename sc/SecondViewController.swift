//
//  SecondViewController.swift
//  sc
//
//  Created by Paul Contreras on 06/03/23.
//

import Cocoa
import Swift


/*
 This values are defined by Me, because this values solve a problem
 */
let Intendencia = 35
let Asistente = 50
let Administrativo = 80
let Directivo = 120
let Gerente = 150

// Here initialice the salary
var mySalary = 0

func getHours(hours: Int)->Int{
    return hours
}

/*
 This function calculates the salary in function by user picker selection, so get the user num of hours input and multiply by constant values
 */
func calcSalary(job: Int, hours: Int) -> Int{
    switch job {
    case 0:
        mySalary = hours * Intendencia
        return mySalary
    case 1:
        mySalary = hours * Asistente
        return mySalary
    case 2:
        mySalary = hours * Administrativo
        return mySalary
    case 3:
        mySalary = hours * Directivo
        return mySalary
    case 4:
        mySalary = hours * Gerente
        return mySalary
    default:
        return 0
    }
    
}

/*
 This function calculates the salary per week
 */
func salaryWeek(job: Int)->Int{
    var salaryWeek = 0
    switch job {
    case 0:
        salaryWeek = Intendencia * 8 * 5
        return salaryWeek
    case 1:
        salaryWeek = Asistente * 8 * 5
        return salaryWeek
    case 2:
        salaryWeek = Administrativo * 8 * 5
        return salaryWeek
    case 3:
        salaryWeek = Directivo * 8 * 5
        return salaryWeek
    case 4:
        salaryWeek = Gerente * 8 * 5
        return salaryWeek
    default:
        return 0
    }
}




class SecondViewController: NSViewController {
    
    

    // Here connect the storyboard items to main controller
    @IBOutlet var puestoSelected: NSTextField!
    @IBOutlet var selectJob: NSComboBox!
    @IBOutlet var pagoAnual: NSTextField!
    @IBOutlet var pagoMes: NSTextField!
    @IBOutlet var pagoQuin: NSTextField!
    @IBOutlet var pagoSem: NSTextField!
    @IBOutlet var pagoJor: NSTextField!
    @IBOutlet var numHours: NSTextField!
    @IBOutlet var calcBTN: NSButton!
    @IBOutlet var horasT: NSTextField!
    
    
    /* This is the button function to call functions and update the views
     */
    
    @IBAction func calcular(_ sender: Any) {
        var pago: Int
        var week: Int
        var quin: Int
        var year: Int
        var month: Int
        
        let selJob = selectJob.indexOfSelectedItem
        let puesto = selectJob.stringValue
        let nH = numHours.intValue
        let HorasTrabajas = getHours(hours: Int(nH))
        pago = calcSalary(job: selJob, hours: HorasTrabajas)
        week = salaryWeek(job: selJob)
        quin = week * 2
        month = quin * 2
        year = month * 12
        
        puestoSelected.stringValue = puesto.description
        pagoJor.stringValue = pago.description
        pagoSem.stringValue = week.description
        pagoQuin.stringValue = quin.description
        pagoMes.stringValue = month.description
        pagoAnual.stringValue = year.description
        horasT.stringValue = HorasTrabajas.description
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
}
