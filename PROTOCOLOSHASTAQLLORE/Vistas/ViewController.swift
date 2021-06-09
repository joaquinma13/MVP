//
//  ViewController.swift
//  PROTOCOLOSHASTAQLLORE
//
//  Created by Joaquin Martinez on 08/06/21.
//

import UIKit

class ViewController: UIViewController, Protocolobtn1{
    
    
    
    var presentador = Presentador()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentador.delegado = self
    }
    //EVENTOS PARA LOS BOTONES
    @IBAction func actionBtn1(_ sender: Any) {
        presentador.funcion1presentador()
       
    }
    @IBAction func actionBtn2(_ sender: Any) {
        
        presentador.funcion2presentador()
    }
    @IBAction func actionBtn3(_ sender: Any) {
        
       
    }
    
    func accionbtn1() {
        print("boton 1")
    }
    
    func accionServicio (dato: Locations.Results?) {
        print(dato)
    }


}

