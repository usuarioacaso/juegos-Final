//
//  ViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 12/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var sections = ["INAUGURACION","FRONTON","CANASTA","FULBITO","CUBILETE","PRESENTACION TRABAJOS JJ FF","AJEDREZ","GOLPE","TENIS DE MESA","TENIS DE CAMPO","BILLAR","SAPO VARONES","FIN PRESENTACION TRABAJOS JJ FF","SAPO DAMAS","BADMINTON","CARRERA","BOWLING DAMAS","NATACION","BOWLING VARONES","PREMIACION JJ FF","TIRO","INICIO EXPOSICION JJ FF","FIN EXPOSICION JJFF","CLAUSURA"]
    
    let listaInaugura   = ["Sabado 13 de Agosto"] //1
    let listaFronton    = ["Martes 16 de Agosto","Jueves 18 de Agosto","Martes 23 de Agosto","Jueves 25 de Agosto","Jueves 01 de Setiembre"] //2
    var listaCanasta    = ["Miercoles 17 de Agosto","Viernes 19 de Agosto"] //3
    var listaFulbito    = ["Sabado 20 de Agosto","Sabado 27 de Agosto","Sabado 03 de Setiembre","Sabado 10 de Setiembre","Sabado 17 de Setiembre"] //4
    var listaCubilete   = ["Sabado 20 de Agosto","Sabado 27 de Agosto","Sabado 03 de Setiembre","Sabado 10 de Setiembre","Sabado 17 de Setiembre"] //5
    var listaPresentaJF = ["Sabado 20 de Agosto"] //6
    var listaAjedrez    = ["Martes 23 de Agosto","Jueves 25 de Agosto","Jueves 01 de Setiembre","Martes 06 de Setiembre","Jueves 08 de Setiembre","Martes 13 de Setiembre","Jueves 15 de Setiembre"] //7
    let listaGolpe      = ["Miercoles 24 de Agosto"] //8
    var listaTenisM     = ["Viernes 02 de Setiembre","Miercoles 07 de Setiembre","Viernes 09 de Setiembre","Miercoles 14 de Setiembre","Viernes 16 de Setiembre"] //09
    var listaTenisCV    = ["Martes 20 de Setiembre","Jueves 22 de Setiembre","Martes 27 de Setiembre","Jueves 29 de Setiembre","Martes 04 de Octubre"] // 10
    var listaBillar     = ["Miercoles 21 de Setiembre","Viernes 23 de Setiembre","Miercoles 28 de Setiembre","Viernes 30 de Setiembre","Miercoles 05 de Octubre","Viernes 07 de Octubre","Miercoles 12 de Octubre","Viernes 14 de Octubre"] //11
    var listaSapoV      = ["Sabado 24 de Setiembre"] //12
    var listaFinaliza   = ["Jueves 29 de Setiembre"] //13
    var listaSapoD      = ["Sabado 01 de Octubre"] //14
    var listaBadminton  = ["Jueves 06 de Octubre","Martes 11 de Octubre","Jueves 13 de Octubre"] //15
    var listaCarrera    = ["Domingo 09 de Octubre"] //16
    var listaBowlingD   = ["Miercoles 19 de Octubre"] //17
    var listaNatacion   = ["Sabado 22 de Octubre"] //18
    var listaBowlingV   = ["Miercoles 26 de Octubre"] //19
    var listaPremiacion = ["Jueves 27 de Octubre"] //20
    var listaTiro       = ["Viernes 28 de Octubre"] //21
    var listaIExpoJF    = ["Sabado 29 de Octubre"] //22
    var listaFExpoJF    = ["Viernes 04 de Noviembre"] //23
    var listaClausura   = ["Sabado 12 de Noviembre"] // 24
    
    var horaInaugura =  ["11.00 hrs"] // 1
    var horaFronton =   ["10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs"] //2
    var horaCanasta =   ["17.00 hrs","17.00 hrs"] //3
    var horaFulbito =   ["08.30 hrs","08.30 hrs","08.30 hrs","08.30 hrs","08.30 hrs"] //4
    var horaCubilete =  ["10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs","10.00 hrs"] //5
    var horaPresenta =  ["10.00 hrs"] //6
    var horaAjedrez =   ["17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs"] //7
    var horaGolpe =     ["17.00 hrs"] //8
    var horaTenisM =    ["18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs","18.00 hrs"] //9
    var horaTenisC =    ["09.00 hrs","09.00 hrs","09.00 hrs","09.00 hrs","09.00 hrs"] //10
    var horaBillar =    ["17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs","17.00 hrs"] //11
    var horaSapoV =     ["10.00 hrs"] //12
    var horaFinaliza =  ["17.00 hrs"] //13
    var horaSapoD =     ["10.00 hrs"] //14
    var horaBadminton = ["09.00 hrs","09.00 hrs","09.00 hrs"] //15
    var horaCarrera =   ["08.30 hrs"] //16
    var horaBowlingD =  ["10.00 hrs"] //17
    var horaNatacion =  ["10.00 hrs"] //18
    var horaBowlingV =  ["10.00 hrs"] // 19
    var horaPremia =    ["17.00 hrs"] //20
    var horaTiro =      ["08.00 hrs"] //21
    var horaIExpoJF =   ["09.00 hrs"] //22
    var horaFExpoJF =   ["17.00 hrs"] //23
    var horaClausura =  ["13.00 hrs"] //24

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
            totalFilas = listaInaugura.count
        }
        if section == 1{
            totalFilas = listaFronton.count
        }
        if section == 2{
            totalFilas = listaCanasta.count
        }
        if section == 3{
            totalFilas = listaFulbito.count
        }
        if section == 4{
            totalFilas = listaCubilete.count
        }
        if section == 5{
            totalFilas = listaPresentaJF.count
        }
        if section == 6{
            totalFilas = listaAjedrez.count
        }
        if section == 7{
            totalFilas = listaGolpe.count
        }
        if section == 8{
            totalFilas = listaTenisM.count
        }
        if section == 9{
            totalFilas = listaTenisCV.count
        }
        if section == 10{
            totalFilas = listaBillar.count
        }
        if section == 11{
            totalFilas = listaSapoV.count
        }
        if section == 12{
            totalFilas = listaFinaliza.count
        }
        if section == 13{
            totalFilas = listaSapoD.count
        }
        if section == 14{
            totalFilas = listaBadminton.count
        }
        if section == 15{
            totalFilas = listaCarrera.count
        }
        if section == 16{
            totalFilas = listaBowlingD.count
        }
        if section == 17{
            totalFilas = listaNatacion.count
        }
        if section == 18{
            totalFilas = listaBowlingV.count
        }
        if section == 19{
            totalFilas = listaPremiacion.count
        }
        if section == 20{
            totalFilas = listaTiro.count
        }
        if section == 21{
            totalFilas = listaIExpoJF.count
        }
        if section == 22{
            totalFilas = listaFExpoJF.count
        }
        if section == 23{
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
            titulo = listaInaugura[indexPath.row] as String
            subTitulo = horaInaugura[indexPath.row] as String
        }
        if section == 1{
            titulo = listaFronton[indexPath.row] as String
            subTitulo = horaFronton[indexPath.row] as String
        }
        if section == 2{
            titulo = listaCanasta[indexPath.row] as String
            subTitulo = horaCanasta[indexPath.row] as String
        }
        if section == 3{
            titulo = listaFulbito[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 4{
            titulo = listaCubilete[indexPath.row] as String
            subTitulo = horaCubilete[indexPath.row] as String
        }
        if section == 5{
            titulo = listaPresentaJF[indexPath.row] as String
            subTitulo = horaPresenta[indexPath.row] as String
        }
        if section == 6{
            titulo = listaAjedrez[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 7{
            titulo = listaGolpe[indexPath.row] as String
            subTitulo = horaGolpe[indexPath.row] as String
        }
        if section == 8{
            titulo = listaTenisM[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 9{
            titulo = listaTenisCV[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 10{
            titulo = listaBillar[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 11{
            titulo = listaSapoV[indexPath.row]
            subTitulo = horaSapoV[indexPath.row] as String
        }
        if section == 12{
            titulo = listaFinaliza[indexPath.row] as String
            subTitulo = horaFinaliza[indexPath.row] as String
        }
        if section == 13{
            titulo = listaSapoD[indexPath.row] as String
            subTitulo = horaSapoD[indexPath.row] as String
        }
        if section == 14{
            titulo = listaBadminton[indexPath.row] as String
            subTitulo = horaBadminton[indexPath.row] as String
        }
        if section == 15{
            titulo = listaCarrera[indexPath.row] as String
            subTitulo = horaCarrera[indexPath.row] as String
        }
        if section == 16{
            titulo = listaBowlingD[indexPath.row] as String
            subTitulo = horaBowlingD[indexPath.row] as String
        }
        if section == 17{
            titulo = listaNatacion[indexPath.row] as String
            subTitulo = horaNatacion[indexPath.row] as String
        }
        if section == 18{
            titulo = listaBowlingV[indexPath.row] as String
            subTitulo = horaBowlingV[indexPath.row] as String
        }
        if section == 19{
            titulo = listaPremiacion[indexPath.row] as String
            subTitulo = horaPremia[indexPath.row] as String
        }
        if section == 20{
            titulo = listaTiro[indexPath.row] as String
            subTitulo = horaTiro[indexPath.row] as String
        }
        if section == 21{
            titulo = listaIExpoJF[indexPath.row] as String
            subTitulo = horaIExpoJF[indexPath.row] as String
        }
        if section == 22{
            titulo = listaFExpoJF[indexPath.row] as String
            subTitulo = horaFExpoJF[indexPath.row] as String
        }
        if section == 23{
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



