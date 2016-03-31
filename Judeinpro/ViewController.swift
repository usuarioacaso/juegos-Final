//
//  ViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 12/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var sections = ["INAUGURACION","GOLPE","CANASTA","FRONTON","AJEDREZ","PRESENTACION TRABAJOS JJ FF","TENIS DE MESA","FULBITO","TENIS DE CAMPO","BILLAR","SAPO VARONES","FIN PRESENTACION TRABAJOS JJ FF","BOWLING DAMAS","SAPO DAMAS","BOWLING VARONES","NATACION","TIRO","CARRERA","PREMIACION JJFF","CLAUSURA"]
    
    let listaInauguracion = ["Sabado 13 de Agosto"]
    let listaGolpe      = ["Martes 16 de Agosto"]
    var listaCanasta    = ["Miercoles 17 de Agosto","Viernes 19 de Agosto"]
    var listaFronton    = ["Jueves 18 de Agosto","Sabado 20 de Agosto","Miercoles 24 de Agosto"]
    var listaAjedrez    = ["Martes 23 de Agosto","Jueves 25 de Agosto","Miercoles 31 de Agosto","Viernes 02 de Setiembre","Martes 06 de Setiembre","Jueves 08 de Setiembre","Martes 13 de Setiembre"]
    var listaPresentacion = ["Viernes 26 de Agosto"]
    var listaTenisM     = ["Jueves 01 de Setiembre","Miercoles 07 de Setiembre","Viernes 09 de Setiembre","Miercoles 14 de Setiembre","Viernes 16 de Setiembre"]
    var listaFulbito    = ["Sabado 27 de Agosto","Sabado 03 de Setiembre","Sabado 10 de Setiembre","Sabado 17 de Setiembre","Sabado 24 de Setiembre"]
    var listaTenisCV    = ["Jueves 15 de Setiembre","Martes 20 de Setiembre","Jueves 22 de Setiembre","Martes 27 de Setiembre","Jueves 29 de Setiembre"]
    var listaBillar     = ["Miercoles 21 de Setiembre","Viernes 23 de Setiembre","Miercoles 28 de Setiembre","Viernes 30 de Setiembre","Miercoles 05 de Octubre","Viernes 07 de Octubre","Miercoles 12 de Octubre","Viernes 14 de Octubre"]
    var listaSapoV      = ["Sabado 01 de Octubre"]
    var listaFinaliza   = ["Martes 04 de Octubre"]
    var listaBowlingD   = ["Jueves 06 de Octubre"]
    var listaSapoD      = ["Martes 11 de Octubre"]
    var listaBowlingV   = ["Jueves 13 de Octubre"]
    var listaNatacion   = ["Sabado 15 de Octubre"]
    var listaTiro       = ["Jueves 20 de Octubre"]
    var listaCarrera    = ["Domingo 23 de Octubre"]
    var listaPremiacion = ["Viernes 28 de Octubre"]
    var listaClausura   = ["Sabado 05 de Noviembre"]
    
    var horaInaugura =  ["11.00 hrs"]
    var horaGolpe =     ["17.00 hrs"]
    var horaCanasta =   ["17.00 hrs","17.00 hrs"]
    var horaFronton =   ["10.00 hrs","10.00 hrs","10.00 hrs"]
    var horaAjedrez =   ["16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs"]
    var horaPresenta =  ["10.00 hrs"]
    var horaTenisM =    ["18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs"]
    var horaFulbito =   ["10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs"]
    var horaTenisC =    ["08.00 hrs","08.00 hrs","08.00 hrs","08.00 hrs","08.00 hrs"]
    var horaBillar =    ["17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs"]
    var horaSapoV =     ["10.00 hrs"]
    var horaFinaliza =  ["17.00 hrs"]
    var horaBowlingD =  ["10.00 hrs"]
    var horaSapoD =     ["10.00 hrs"]
    var horaBowlingV =  ["10.00 hrs"]
    var horaNatacion =  ["10.00 hrs"]
    var horaTiro =      ["09.00 hrs"]
    var horaCarrera =   ["09.00 hrs"]
    var horaPremia =    ["09.00 hrs"]
    var horaClausura =  ["13.00 hrs"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var totalFilas = 0
        
        if section == 0{
            totalFilas = listaInauguracion.count
        }
        if section == 1{
            totalFilas = listaGolpe.count
        }
        if section == 2{
            totalFilas = listaCanasta.count
        }
        if section == 3{
            totalFilas = listaFronton.count
        }
        if section == 4{
            totalFilas = listaAjedrez.count
        }
        if section == 5{
            totalFilas = listaPresentacion.count
        }
        if section == 6{
            totalFilas = listaTenisM.count
        }
        if section == 7{
            totalFilas = listaFulbito.count
        }
        if section == 8{
            totalFilas = listaTenisCV.count
        }
        if section == 9{
            totalFilas = listaBillar.count
        }
        if section == 10{
            totalFilas = listaSapoV.count
        }
        if section == 11{
            totalFilas = listaFinaliza.count
        }
        if section == 12{
            totalFilas = listaBowlingD.count
        }
        if section == 13{
            totalFilas = listaSapoD.count
        }
        if section == 14{
            totalFilas = listaBowlingV.count
        }
        if section == 15{
            totalFilas = listaNatacion.count
        }
        if section == 16{
            totalFilas = listaTiro.count
        }
        if section == 17{
            totalFilas = listaCarrera.count
        }
        if section == 18{
            totalFilas = listaPremiacion.count
        }
        if section == 19{
            totalFilas = listaClausura.count
        }
        
        return totalFilas
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath) 
        
        let section = indexPath.section
        
        var titulo:String       = ""
        var subTitulo:String    = ""
        
        if section == 0{
            titulo = listaInauguracion[indexPath.row] as String
            subTitulo = horaInaugura[indexPath.row] as String
        }
        if section == 1{
            titulo = listaGolpe[indexPath.row] as String
            subTitulo = horaGolpe[indexPath.row] as String
        }
        if section == 2{
            titulo = listaCanasta[indexPath.row] as String
            subTitulo = horaCanasta[indexPath.row] as String
        }
        if section == 3{
            titulo = listaFronton[indexPath.row] as String
            subTitulo = horaFronton[indexPath.row] as String
        }
        if section == 4{
            titulo = listaAjedrez[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 5{
            titulo = listaPresentacion[indexPath.row] as String
            subTitulo = horaPresenta[indexPath.row] as String
        }
        if section == 6{
            titulo = listaTenisM[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 7{
            titulo = listaFulbito[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 8{
            titulo = listaTenisCV[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 9{
            titulo = listaBillar[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 10{
            titulo = listaSapoV[indexPath.row] as String
            subTitulo = horaSapoV[indexPath.row] as String
        }
        if section == 11{
            titulo = listaFinaliza[indexPath.row]
            subTitulo = horaFinaliza[indexPath.row] as String
        }
        if section == 12{
            titulo = listaBowlingD[indexPath.row] as String
            subTitulo = horaBowlingD[indexPath.row] as String
        }
        if section == 13{
            titulo = listaSapoD[indexPath.row] as String
            subTitulo = horaSapoD[indexPath.row] as String
        }
        if section == 14{
            titulo = listaBowlingV[indexPath.row] as String
            subTitulo = horaBowlingV[indexPath.row] as String
        }
        if section == 15{
            titulo = listaNatacion[indexPath.row] as String
            subTitulo = horaNatacion[indexPath.row] as String
        }
        if section == 16{
            titulo = listaTiro[indexPath.row] as String
            subTitulo = horaTiro[indexPath.row] as String
        }
        if section == 17{
            titulo = listaCarrera[indexPath.row] as String
            subTitulo = horaCarrera[indexPath.row] as String
        }
        if section == 18{
            titulo = listaPremiacion[indexPath.row] as String
            subTitulo = horaPremia[indexPath.row] as String
        }
        if section == 19{
            titulo = listaClausura[indexPath.row] as String
            subTitulo = horaClausura[indexPath.row] as String
        }
        
        cell.textLabel?.text = titulo
        cell.detailTextLabel?.text = subTitulo
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    // verificar tableview -> view -> width = 400 height = 480
}



