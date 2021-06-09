//
//  Presentador.swift
//  PROTOCOLOSHASTAQLLORE
//
//  Created by Joaquin Martinez on 08/06/21.
//

import Foundation
class Presentador {
    var delegado : Protocolobtn1? //se crea una instancia del protocolo
    
    func funcion1presentador() {
        
        delegado?.accionbtn1()
    }
    func funcion2presentador()
    {
        let session = URLSession.shared
        let url = URL(string: "https://maps.googleapis.com/maps/api/geocode/json?latlng=19.275554,-99.228461&key=AIzaSyBnO7ydnB9vCq2GtuWyqVEclHaHhr-0HBA")!
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            if error != nil {
                return
            }
            do {
                let json = try JSONDecoder().decode(Locations.self, from: data! )
                let obj = json.results.first
                DispatchQueue.main.async {
                    self.delegado?.accionServicio(dato: obj)
                }
                
            }catch{
                print("Error during JSON serialization: \(error.localizedDescription)")
            }
        })
        task.resume()
    }
}
