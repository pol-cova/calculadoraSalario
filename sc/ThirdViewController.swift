//
//  ThirdViewController.swift
//  sc
//
//  Created by Paul Contreras on 13/03/23.
//

import Cocoa

// Initialice the values to work with It
var mySalaryPH:Double = 0
var mydesc:Double = 0

/* This functions calculate the salary after taxes so, get the taxes value and the salary without taxes
 */
func mySalaryNeto(impuesto: Double, salario: Double) -> Double {
    let impuestoCuota = impuesto / 100
    let desc = salario * impuestoCuota
    mydesc = salario - desc
    return mydesc
}



class ThirdViewController: NSViewController {

    // Connection first view items to controller
    @IBOutlet var calcularBTN: NSButton!
    @IBOutlet var pagoPorHora: NSTextField!
    @IBOutlet var horasTrabajadas: NSTextField!
    @IBOutlet var impuesto: NSTextField!
    @IBOutlet var horasTrabajadasLabel: NSTextField!
    @IBOutlet var salarioBrutoJor: NSTextField!
    @IBOutlet var salarioNetoJor: NSTextField!
    
    //Connection Resultados view items to controller
    
    @IBOutlet var tax: NSTextField!
    @IBOutlet var payFH: NSTextField!
    
    @IBOutlet var datosCompletos: NSButton!
    @IBOutlet var pagoBrutoJor: NSTextField!
    @IBOutlet var pagoBrutoWeek: NSTextField!
    @IBOutlet var pagoBrutoQuin: NSTextField!
    @IBOutlet var pagoBrutoMonth: NSTextField!
    @IBOutlet var pagoBrutoAnual: NSTextField!
    @IBOutlet var pagoNetoJor: NSTextField!
    @IBOutlet var pagoNetoWeek: NSTextField!
    @IBOutlet var pagoNetoQuin: NSTextField!
    @IBOutlet var pagoNetoMonth: NSTextField!
    @IBOutlet var pagoNetoAnual: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    // This button action call al functions to first view
    @IBAction func calcularSalario(_ sender: Any) {
        let numHours = horasTrabajadas.intValue
        let imp = impuesto.intValue
        let pagoPH = pagoPorHora.intValue
        
        let salario = Double(pagoPH * numHours)
        let salarioWImp = mySalaryNeto(impuesto: Double(imp), salario: salario)
        
        
        horasTrabajadasLabel.stringValue = numHours.description
        salarioBrutoJor.stringValue = salario.description
        salarioNetoJor.stringValue = salarioWImp.description
        
        
        
    }
    // This button action call al functions to results view
    @IBAction func datosCompletos(_ sender: Any) {
        let Imp = Double(tax.intValue)
        let payForHour = payFH.intValue
        
        let pagoPorJor = Double(payForHour * 8)
        let pagoBrutoPWeek = Double(pagoPorJor * 5)
        let pagoBrutoPQuin = Double(pagoBrutoPWeek * 2)
        let pagoBrutoPMont = Double(pagoBrutoPQuin * 2)
        let pagoBrutoPAn = Double(pagoBrutoPMont * 12)
        
        let pagoNetoPorJor = mySalaryNeto(impuesto: Imp, salario: pagoPorJor)
        let pagoNetoPWeek = mySalaryNeto(impuesto: Imp, salario: pagoBrutoPWeek)
        let pagoNetoPQuin = mySalaryNeto(impuesto: Imp, salario: pagoBrutoPQuin)
        let pagoNetoPMont = mySalaryNeto(impuesto: Imp, salario: pagoBrutoPMont)
        let pagoNetoPAnual = mySalaryNeto(impuesto: Imp, salario: pagoBrutoPAn)
        
        pagoBrutoJor.stringValue = pagoPorJor.description
        pagoBrutoWeek.stringValue = pagoBrutoPWeek.description
        pagoBrutoQuin.stringValue = pagoBrutoPQuin.description
        pagoBrutoMonth.stringValue = pagoBrutoPMont.description
        pagoBrutoAnual.stringValue = pagoBrutoPAn.description
        
        pagoNetoJor.stringValue = pagoNetoPorJor.description
        pagoNetoWeek.stringValue = pagoNetoPWeek.description
        pagoNetoQuin.stringValue = pagoNetoPQuin.description
        pagoNetoMonth.stringValue = pagoNetoPMont.description
        pagoNetoAnual.stringValue = pagoNetoPAnual.description
        
    }
    
    
    
    
    
}
