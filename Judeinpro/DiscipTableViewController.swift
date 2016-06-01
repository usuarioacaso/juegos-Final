//
//  DiscipTableViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class DiscipTableViewController: UITableViewController {
    
    var listaDepor: NSMutableArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaDepor = NSMutableArray()
        
        let dicc1 = ["klogo":"golpe","knombre":"GOLPE","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc2 = ["klogo":"canasta","knombre":"CANASTA","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc3 = ["klogo":"paleta1","knombre":"FRONTON","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc4 = ["klogo":"sapo","knombre":"SAPO","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        //var dicc5 = ["klogo":"sapo","knombre":"SAPO DAMAS","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc6 = ["klogo":"ajedrez","knombre":"AJEDREZ","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc7 = ["klogo":"fulbito","knombre":"FULBITO","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc8 = ["klogo":"tennisC","knombre":"TENNIS DE CAMPO","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc9 = ["klogo":"bowling","knombre":"BOWLING","klugar":"Bowling Real Plaza Primavera","klatitud":"-12.111315","klongitud":"-77.002780"]
        //var dicc10 = ["klogo":"bowling","knombre":"BOWLING DAMAS","klugar":"Bowling Plaza de Jesus Maria","klatitud":"-12.074178","klongitud":"-77.050707"]
        let dicc11 = ["klogo":"billar","knombre":"BILLAR","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc12 = ["klogo":"TennisM","knombre":"TENNIS DE MESA","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc13 = ["klogo":"natacion","knombre":"NATACION","klugar":"Piscina del CGE","klatitud":"-12.101554","klongitud":"-76.985823"]
        let dicc14 = ["klogo":"carrera","knombre":"CARRERA","klugar":"Perimetro del CGE","klatitud":"-12.101554","klongitud":"-76.985823"]
        let dicc15 = ["klogo":"tiro","knombre":"TIRO","klugar":"Campo de Tiro del COEDE","klatitud":"-12.160199","klongitud":"-77.018401"]
        let dicc16 = ["klogo":"badminton","knombre":"BADMINTON","klugar":"Gimnasio del CGE","klatitud":"-12.101554","klongitud":"-76.985823"]
        let dicc17 = ["klogo":"cubilete","knombre":"CUBILETE","klugar":"Circulo Militar Sede Chorrillos","klatitud":"-12.161796","klongitud":"-77.023016"]
        let dicc18 = ["klogo":"cuento","knombre":"CUENTO","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc19 = ["klogo":"poesia","knombre":"POESIA","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        let dicc20 = ["klogo":"fotografia","knombre":"FOTOGRAFIA","klugar":"Circulo Militar del Peru","klatitud":"-12.080940","klongitud":"-77.044629"]
        
        listaDepor.addObject(dicc1)
        listaDepor.addObject(dicc2)
        listaDepor.addObject(dicc3)
        listaDepor.addObject(dicc4)
        //listaDepor.addObject(dicc5)
        listaDepor.addObject(dicc6)
        listaDepor.addObject(dicc7)
        listaDepor.addObject(dicc8)
        listaDepor.addObject(dicc9)
        //listaDepor.addObject(dicc10)
        listaDepor.addObject(dicc11)
        listaDepor.addObject(dicc12)
        listaDepor.addObject(dicc13)
        listaDepor.addObject(dicc14)
        listaDepor.addObject(dicc15)
        listaDepor.addObject(dicc16)
        listaDepor.addObject(dicc17)
        listaDepor.addObject(dicc18)
        listaDepor.addObject(dicc19)
        listaDepor.addObject(dicc20)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDepor.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("celdaDepor", forIndexPath: indexPath) as! DiscipTableViewCell
        
        let data = listaDepor[indexPath.row] as! NSDictionary
        
        cell.nomDiscp.text = data["knombre"] as? String
        
        let nombreLogo = data ["klogo"] as! String
        cell.logoDiscp.image = UIImage(named:nombreLogo)
        
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)

        return cell
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        navigationController?.navigationBar.tintColor = UIColor.yellowColor()
        
        let identifi = segue.identifier as NSString!
        if(identifi.isEqualToString("caminoLugar")){
            let indexPath = tableView.indexPathForSelectedRow! as NSIndexPath!
            let data = listaDepor[indexPath.row] as! NSDictionary
            let detalleDis = data["knombre"] as! String
            let detalleLug = data["klugar"] as! String
            let detalleLat = data["klatitud"] as! String
            let detalleLon = data["klongitud"] as! String
            let vistaDetalle = segue.destinationViewController as! DiscipLugarViewController
            vistaDetalle.nombreDis = detalleDis
            vistaDetalle.nombreLug = detalleLug
            vistaDetalle.datoLat = detalleLat
            vistaDetalle.datoLon = detalleLon
        }
    }
}
