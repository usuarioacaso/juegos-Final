//
//  fechasViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 26/12/15.
//  Copyright © 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class fechasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var sections = ["Sabado 13 de Agosto","Martes 16 de Agosto","Miercoles 17 de Agosto","Jueves 18 de agosto",
        "Viernes 19 de Agosto","Sabado 20 de Agosto","Martes 23 de Agosto","Miercoles 24 de Agosto",
        "Jueves 25 de Agosto","Viernes 26 de Agosto","Sabado 27 de Agosto","Miercoles 31 de Agosto",
        "Jueves 01 de Setiembre","Viernes 02 de Setiembre","Sabado 03 de Setiembre","Martes 06 de Setiembre",
        "Miercoles 07 de Setiembre","Jueves 08 de Setiembre","Viernes 09 de Setiembre","Sabado 10 de Setiembre",
        "Martes 13 de Setiembre","Miercoles 14 de Setiembre","Jueves 15 de Setiembre","Viernes 16 de Setiembre",
        "Sabado 17 de Setiembre","Martes 20 de Setiembre","Miercoles 21 de Setiembre","Jueves 22 de Setiembre",
        "Viernes 23 de Setiembre","Sabado 24 de Setiembre","Martes 27 de Setiembre","Miercoles 28 de Setiembre",
        "Jueves 29 de Setiembre","Viernes 30 de Setiembre","Sabado 01 de Octubre","Martes 04 de Octubre",
        "Miercoles 05 de Octubre","Jueves 06 de Octubre","Viernes 07 de Octubre","Martes 11 de Octubre",
        "Miercoles 12 de Octubre","Jueves 13 de Octubre","Viernes 14 de Octubre","Sabado 15 de Octubre",
        "Jueves, 20 de Octubre","Domingo 23 de Octubre","Viernes 28 de Octubre","Sabado 05 de Noviembre"]
    
    let fecha1 = ["Inauguración"] // 13 Ago
    let fecha2 = ["Golpe"] // 16 Ago
    let fecha3 = ["Canasta - Primera Fecha"] // 17 Ago
    let fecha4 = ["Fronton - Primera Fecha"] // 18 Ago
    let fecha5 = ["Canasta - Segunda Fecha"] // 19 Ago
    let fecha6 = ["Frontón - Segunda fecha"] // 20 Ago
    let fecha7 = ["Ajedrez - Primera fecha"] // 23 ago
    let fecha8 = ["Fronton - Tercera Fecha"] // 24 Ago
    let fecha9 = ["Ajedrez - Segunda Fecha"] // 25 Ago
    let fecha10 = ["Presentacion de Trabajos JJ FF"] // 26 Ago
    let fecha11 = ["Fulbito - Primera fecha"] // 27 Ago
    let fecha12 = ["Ajedrez - Tercera fecha"] // 31 Ago
    let fecha13 = ["Tenis de Mesa - Primera Fecha"] // 01 Set
    let fecha14 = ["Ajedrez - Cuarta fecha"] // 02 Set
    let fecha15 = ["Fulbito - Segunda Fecha"] // 03 de Set
    let fecha16 = ["Ajedrez - Quinta fecha"] // 06 de Set
    let fecha17 = ["Tenis de Mesa - Segunda Fecha"] // 07 Set
    let fecha18 = ["Ajedrez - Sexta fecha"] // 08 Set
    let fecha19 = ["Tenis de Mesa - Tercera Fecha"] // 09 Set
    let fecha20 = ["Fulbito - Tercera fecha"] // 10 Set
    let fecha21 = ["Ajedrez - Setima Fecha"] // 13 Set
    let fecha22 = ["Tenis de Mesa - Cuarta fecha"] // 14 Set
    let fecha23 = ["Tenis de Campo - Primera Fecha"] // 15 Set
    let fecha24 = ["Tenis de Mesa - Quinta fecha"] // 16 Set
    let fecha25 = ["Fulbito - Cuarta Fecha"] // 17 Set
    let fecha26 = ["Tenis de Campo - Segunda fecha"] // 20 Set
    let fecha27 = ["Billar - Primera Fecha"] // 21 Set
    let fecha28 = ["Tenis de Campo - Tercera fecha"] // 22 Set
    let fecha29 = ["Billar - Segunda Fecha"] // 23 Set
    let fecha30 = ["Fulbito - Quinta fecha"] // 24 Set
    let fecha31 = ["Tenis de Campo - Cuarta Fecha"] // 27 Set
    let fecha32 = ["Billar - Tercera fecha"] // 28 Set
    let fecha33 = ["Tenis de Campo - Quinta Fecha"] // 29 Set
    let fecha34 = ["Billar - Cuarta fecha"] // 30 Set
    let fecha35 = ["Sapo Varones"] // 01 Oct
    let fecha36 = ["Finaliza Presentacion Trabajos JJ FF"] // 04 Oct
    let fecha37 = ["Billar - Quinta fecha"] // 05 Oct
    let fecha38 = ["Bowling Damas"] // 06 Oct
    let fecha39 = ["Billar - Sexta Fecha"] // 07 Oct
    let fecha40 = ["Sapo Damas"] // 11 Oct
    let fecha41 = ["Billar - Setima Fecha"] // 12 Oct
    let fecha42 = ["Bowling Varones"] // 13 Oct
    let fecha43 = ["Billar - Octava Fecha"] // 14 Oct
    let fecha44 = ["Natacion"] // 15 Oct
    let fecha45 = ["Tiro"] // 20 Oct
    let fecha46 = ["Carrera"] // 23 Oct
    let fecha47 = ["Premiacion Juegos Florales"] // 28 Oct
    let fecha48 = ["Clausura"] // 5 Nov
    
    
    var horaInaugura =  ["11.00 hrs"]
    var horaGolpe =     ["17.00 hrs"]
    var horaCanasta =   ["17.00 hrs","17.00 hrs"]
    var horaFronton =   ["10.00 hrs","10.00 hrs","10.00 hrs"]
    var horaAjedrez =   ["16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs"]
    var horaPresenta =  ["10.00 hrs"]
    var horaTenisM =    ["16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs","16.00 hrs"]
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
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.22, green: 0.53, blue: 0.33, alpha: 1.0)
        //UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        //UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.yellowColor()]

         //view.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var totalFilas = 0
        
        if section == 0{
            totalFilas = fecha1.count
        }
        if section == 1{
            totalFilas = fecha2.count
        }
        if section == 2{
            totalFilas = fecha3.count
        }
        if section == 3{
            totalFilas = fecha4.count
        }
        if section == 4{
            totalFilas = fecha5.count
        }
        if section == 5{
            totalFilas = fecha6.count
        }
        if section == 6{
            totalFilas = fecha7.count
        }
        if section == 7{
            totalFilas = fecha8.count
        }
        if section == 8{
            totalFilas = fecha9.count
        }
        if section == 9{
            totalFilas = fecha10.count
        }
        if section == 10{
            totalFilas = fecha11.count
        }
        if section == 11{
            totalFilas = fecha12.count
        }
        if section == 12{
            totalFilas = fecha13.count
        }
        if section == 13{
            totalFilas = fecha14.count
        }
        if section == 14{
            totalFilas = fecha15.count
        }
        if section == 15{
            totalFilas = fecha16.count
        }
        if section == 16{
            totalFilas = fecha17.count
        }
        if section == 17{
            totalFilas = fecha18.count
        }
        if section == 18{
            totalFilas = fecha19.count
        }
        if section == 19{
            totalFilas = fecha20.count
        }
        if section == 20{
            totalFilas = fecha21.count
        }
        if section == 21{
            totalFilas = fecha22.count
        }
        if section == 22{
            totalFilas = fecha23.count
        }
        if section == 23{
            totalFilas = fecha24.count
        }
        if section == 24{
            totalFilas = fecha25.count
        }
        if section == 25{
            totalFilas = fecha26.count
        }
        if section == 26{
            totalFilas = fecha27.count
        }
        if section == 27{
            totalFilas = fecha28.count
        }
        if section == 28{
            totalFilas = fecha29.count
        }
        if section == 29{
            totalFilas = fecha30.count
        }
        if section == 30{
            totalFilas = fecha31.count
        }
        if section == 31{
            totalFilas = fecha32.count
        }
        if section == 32{
            totalFilas = fecha33.count
        }
        if section == 33{
            totalFilas = fecha34.count
        }
        if section == 34{
            totalFilas = fecha35.count
        }
        if section == 35{
            totalFilas = fecha36.count
        }
        if section == 36{
            totalFilas = fecha37.count
        }
        if section == 37{
            totalFilas = fecha38.count
        }
        if section == 38{
            totalFilas = fecha39.count
        }
        if section == 39{
            totalFilas = fecha40.count
        }
        if section == 40{
            totalFilas = fecha41.count
        }
        if section == 41{
            totalFilas = fecha42.count
        }
        if section == 42{
            totalFilas = fecha43.count
        }
        if section == 43{
            totalFilas = fecha44.count
        }
        if section == 44{
            totalFilas = fecha45.count
        }
        if section == 45{
            totalFilas = fecha46.count
        }
        if section == 46{
            totalFilas = fecha47.count
        }
        if section == 47{
            totalFilas = fecha48.count
        }
        return totalFilas
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath)
        
        let section = indexPath.section
        
        var titulo:String = ""
        var subTitulo:String = ""
        
        if section == 0{
            titulo = fecha1[indexPath.row] as String
            subTitulo = horaInaugura[indexPath.row] as String
        }
        if section == 1{
            titulo = fecha2[indexPath.row] as String
            subTitulo = horaGolpe[indexPath.row] as String
        }
        if section == 2{
            titulo = fecha3[indexPath.row] as String
            subTitulo = horaCanasta[indexPath.row] as String
        }
        if section == 3{
            titulo = fecha4[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 4{
            titulo = fecha5[indexPath.row] as String
            subTitulo = horaCanasta[indexPath.row] as String
        }
        if section == 5{
            titulo = fecha6[indexPath.row] as String
            subTitulo = horaFronton[indexPath.row] as String
        }
        if section == 6{
            titulo = fecha7[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 7{
            titulo = fecha8[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 8{
            titulo = fecha9[indexPath.row] as String
            subTitulo = horaFronton[indexPath.row] as String
        }
        if section == 9{
            titulo = fecha10[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 10{
            titulo = fecha11[indexPath.row] as String
            subTitulo = horaFronton[indexPath.row] as String
        }
        if section == 11{
            titulo = fecha12[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 12{
            titulo = fecha13[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 13{
            titulo = fecha14[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 14{
            titulo = fecha15[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 15{
            titulo = fecha16[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 16{
            titulo = fecha17[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 17{
            titulo = fecha18[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 18{
            titulo = fecha19[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 19{
            titulo = fecha20[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 20{
            titulo = fecha21[indexPath.row] as String
            subTitulo = horaAjedrez[indexPath.row] as String
        }
        if section == 21{
            titulo = fecha22[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 22{
            titulo = fecha23[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 23{
            titulo = fecha24[indexPath.row] as String
            subTitulo = horaTenisM[indexPath.row] as String
        }
        if section == 24{
            titulo = fecha25[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 25{
            titulo = fecha26[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 26{
            titulo = fecha27[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 27{
            titulo = fecha28[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 28{
            titulo = fecha29[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 29{
            titulo = fecha30[indexPath.row] as String
            subTitulo = horaFulbito[indexPath.row] as String
        }
        if section == 30{
            titulo = fecha31[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 31{
            titulo = fecha32[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 32{
            titulo = fecha33[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 33{
            titulo = fecha34[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 34{
            titulo = fecha35[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 35{
            titulo = fecha36[indexPath.row] as String
            subTitulo = horaTenisC[indexPath.row] as String
        }
        if section == 36{
            titulo = fecha37[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 37{
            titulo = fecha38[indexPath.row] as String
            subTitulo = horaBowlingD[indexPath.row] as String
        }
        if section == 38{
            titulo = fecha39[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 39{
            titulo = fecha40[indexPath.row] as String
            subTitulo = horaCarrera[indexPath.row] as String
        }
        if section == 40{
            titulo = fecha41[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 41{
            titulo = fecha42[indexPath.row] as String
            subTitulo = horaNatacion[indexPath.row] as String
        }
        if section == 42{
            titulo = fecha43[indexPath.row] as String
            subTitulo = horaBillar[indexPath.row] as String
        }
        if section == 43{
            titulo = fecha44[indexPath.row] as String
            subTitulo = horaNatacion[indexPath.row] as String
        }
        if section == 44{
            titulo = fecha45[indexPath.row] as String
            subTitulo = horaTiro[indexPath.row] as String
        }
        if section == 45{
            titulo = fecha46[indexPath.row] as String
            subTitulo = horaCarrera[indexPath.row] as String
        }
        if section == 46{
            titulo = fecha47[indexPath.row] as String
            subTitulo = horaPremia[indexPath.row] as String
        }
        if section == 47{
            titulo = fecha48[indexPath.row] as String
            subTitulo = horaClausura[indexPath.row] as String
        }
        
        cell.textLabel?.text = titulo
        cell.detailTextLabel?.text = subTitulo
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0) // rosa de fondo
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
