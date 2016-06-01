//
//  fechasTableViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/12/15.
//  Copyright © 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class fechasTableViewController: UITableViewController {
    
    var sections = ["Sabado 13 de Agosto","Martes 16 de Agosto","Miercoles 17 de Agosto","Jueves 18 de agosto",
        "Viernes 19 de Agosto","Sabado 20 de Agosto",
        "Martes 23 de Agosto","Miercoles 24 de Agosto","Jueves 25 de Agosto",
        "Sabado 27 de Agosto","Jueves 01 de Setiembre",
        "Viernes 02 de Setiembre","Sabado 03 de Setiembre",
        "Martes 06 de Setiembre","Miercoles 07 de Setiembre","Jueves 08 de Setiembre","Viernes 09 de Setiembre",
        "Sabado 10 de Setiembre","Martes 13 de Setiembre","Miercoles 14 de Setiembre",
        "Jueves 15 de Setiembre","Viernes 16 de Setiembre","Sabado 17 de Setiembre",
        "Martes 20 de Setiembre","Miercoles 21 de Setiembre","Jueves 22 de Setiembre","Viernes 23 de Setiembre",
        "Sabado 24 de Setiembre","Martes 27 de Setiembre","Miercoles 28 de Setiembre","Jueves 29 de Setiembre",
        "Viernes 30 de Setiembre","Sabado 01 de Octubre","Martes 04 de Octubre",
        "Miercoles 05 de Octubre","Jueves 06 de Octubre","Viernes 07 de Octubre","Domingo 09 de Octubre",
        "Martes 11 de Octubre","Miercoles 12 de Octubre","Jueves 13 de Octubre","Viernes 14 de Octubre",
        "Miercoles 19 de Octubre","Sabado 22 de Octubre","Miercoles 26 de Octubre","Jueves 27 de Octubre",
        "Viernes 28 de Octubre","Sabado 29 de Octubre","Viernes 04 de Noviembre","Sabado 12 de Noviembre"]
    
    let fecha0 = ["Inauguración"] // 13 Ago
    let fecha1 = ["Fronton - Primera fecha"] // 16 Ago
    let fecha2 = ["Canasta - Primera Fecha"] // 17 Ago
    let fecha3 = ["Fronton - Segunda Fecha"] // 18 Ago
    
    let fecha4 = ["Canasta - Segunda Fecha"] // 19 Ago
    let fecha5 = ["Fulbito - Primera Fecha","Cubilete - Primera Fecha","Presentacion Trabajos JJ FF"] // 20 Ago
    //let fecha7 = ["Cubilete - Primera Fecha"] // 20 ago
    //let fecha8 = ["Presentacion Trabajos JJ FF"] // 20 Ago
    
    let fecha6 = ["Fronton - Tercera Fecha","Ajedrez - Primera Fecha"] // 23 Ago
    //let fecha10 = ["Ajedrez - Primera Fecha"] // 23 Ago
    let fecha7 = ["Golpe"] // 24 Ago
    let fecha8 = ["Fronton - Cuarta Fecha","Ajedrez - Segunda Fecha"] // 25 Ago
    
    //let fecha13 = ["Ajedrez - Segunda Fecha"] // 25 Ago
    let fecha9 = ["Fulbito - Segunda Fecha","Cubilete - Segunda Fecha"] // 27 Ago
    //let fecha15 = ["Cubilete - Segunda Fecha"] // 27 Ago
    let fecha10 = ["Fronton - Quinta fecha","Ajedrez - Tercera Fecha"] // 01 de Set
    
    //let fecha17 = ["Ajedrez - Tercera Fecha"] // 01 Set
    let fecha11 = ["Tenis de Mesa - Primera Fecha"] // 02 Set
    let fecha12 = ["Fulbito - Tercera Fecha","Cubilete - Tercera Fecha"] // 03 Set
    //let fecha20 = ["Cubilete - Tercera fecha"] // 03 Set
    
    let fecha13 = ["Ajedrez - Cuarta Fecha"] // 06 Set
    let fecha14 = ["Tenis de Mesa - Segunda Fecha"] // 07 Set
    let fecha15 = ["Ajedrez - Quinta Fecha"] // 08 Set
    let fecha16 = ["Tenis de Mesa - Segunda Fecha"] // 09 Set
    
    let fecha17 = ["Fulbito - Cuarta Fecha","Cubilete - Cuarta Fecha"] // 10 Set
    //let fecha26 = ["Cubilete - Cuarta Fecha"] // 10 Set
    let fecha18 = ["Ajedrez - Sexta Fecha"] // 13 Set
    let fecha19 = ["Tenis de Mesa - Cuarta Fecha"] // 14 Set
    
    let fecha20 = ["Ajedrez - Setima Fecha"] // 15 Set
    let fecha21 = ["Tenis de Mesa - Quinta fecha"] // 16 Set
    let fecha22 = ["Fulbito - Quinta Fecha","Cubilete - Quinta Fecha"] // 17 Set
    //let fecha32 = ["Cubilete - Quinta Fecha"] // 17 Set
    
    let fecha23 = ["Tenis de Campo - Primera Fecha"] // 20 Set
    let fecha24 = ["Billar - Primera Fecha"] // 21 Set
    let fecha25 = ["Tenis de Campo - Segunda Fecha"] // 22 Set
    let fecha26 = ["Billar - Segunda Fecha"] // 23 Set
    
    let fecha27 = ["Sapo Varones"] // 24 Set
    let fecha28 = ["Tenis de Campo - Tercera Fecha"] // 27 Set
    let fecha29 = ["Billar - Tercera Fecha"] // 28 Set
    let fecha30 = ["Tenis de Campo - Cuarta Fecha","Fin de Presentacion Trabajos JJ FF"] // 29 Set
    
    //let fecha41 = ["Fin de Presentacion de Trabajos JJ FF"] // 29 Set
    let fecha31 = ["Billar - Cuarta Fecha"] // 30 Set
    let fecha32 = ["Sapo Damas"] // 01 Oct
    let fecha33 = ["Tenis de Campo - Quinta Fecha"] // 04 Oct
    
    let fecha34 = ["Billar - Quinta Fecha"] // 5 Oct
    let fecha35 = ["Badminton - Primera Fecha"] // 06 Oct
    let fecha36 = ["Billar - Sexta Fecha"] // 07 Oct
    let fecha37 = ["Carrera"] // 09 Oct
    
    let fecha38 = ["Badminton - Segunda Fecha"] // 11 Oct
    let fecha39 = ["Billar - Setima Fecha"] // 12 Oct
    let fecha40 = ["Badminton - Tercera Fecha"] // 13 Oct
    let fecha41 = ["Billar - Octava Fecha"] // 14 Oct
    
    let fecha42 = ["Bowling Damas"] // 19 Oct
    let fecha43 = ["Natacion"] // 22 Oct
    let fecha44 = ["Bowling Varones"] // 26 Oct
    let fecha45 = ["Premiacion de JJ FF"] // 27 Oct
    
    let fecha46 = ["Tiro"] //28 Oct
    let fecha47 = ["Inicio Exposicion de Trabajos JJ FF"] // 29 Oct
    let fecha48 = ["Fin de Exposicion de Trabajos JJ FF"] //04 Nov
    let fecha49 = ["Clausura"] // 12 Nov
    
    
    var horaFecha0 = ["10.00 hrs"]
    var horaFecha1 = ["17.00 hrs"]
    var horaFecha2 = ["17.00 hrs"]
    var horaFecha3 = ["10.00 hrs"]
    var horaFecha4 = ["10.00 hrs"]
    var horaFecha5 = ["08.30 hrs","10.00 hrs","09.00 hrs"]
    var horaFecha6 = ["10.00 hrs","17.00 hrs"]
    var horaFecha7 = ["17.00 hrs"]
    var horaFecha8 = ["10.00 hrs","17.00 hrs"]
    var horaFecha9 = ["08.30 hrs","10.00 hrs"]
    var horaFecha10 = ["10.00 hrs","17.00 hrs"]
    var horaFecha11 = ["18.00 hrs"]
    var horaFecha12 = ["08.30 hrs","10.00 hrs"]
    var horaFecha13 = ["17.00 hrs"]
    var horaFecha14 = ["18.00 hrs"]
    var horaFecha15 = ["17.00 hrs"]
    var horaFecha16 = ["18.00 hrs"]
    var horaFecha17 = ["08.30 hrs","10.00 hrs"]
    var horaFecha18 = ["17.00 hrs"]
    var horaFecha19 = ["18.00 hrs"]
    var horaFecha20 = ["17.00 hrs"]
    var horaFecha21 = ["18.00 hrs"]
    var horaFecha22 = ["08.30 hrs","10.00 hrs"]
    var horaFecha23 = ["09.00 hrs"]
    var horaFecha24 = ["17.00 hrs"]
    var horaFecha25 = ["09.00 hrs"]
    var horaFecha26 = ["17.00 hrs"]
    var horaFecha27 = ["10.00 hrs"]
    var horaFecha28 = ["09.00 hrs"]
    var horaFecha29 = ["17.00 hrs"]
    var horaFecha30 = ["09.00 hrs","17.00 hrs"]
    var horaFecha31 = ["17.00 hrs"]
    var horaFecha32 = ["10.00 hrs"]
    var horaFecha33 = ["09.00 hrs"]
    var horaFecha34 = ["17.00 hrs"]
    var horaFecha35 = ["10.00 hrs"]
    var horaFecha36 = ["10.00 hrs"]
    var horaFecha37 = ["10.00 hrs"]
    var horaFecha38 = ["09.00 hrs"]
    var horaFecha39 = ["17.00 hrs"]
    var horaFecha40 = ["09.00 hrs"]
    var horaFecha41 = ["17.00 hrs"]
    var horaFecha42 = ["10.00 hrs"]
    var horaFecha43 = ["10.00 hrs"]
    var horaFecha44 = ["10.00 hrs"]
    var horaFecha45 = ["17.00 hrs"]
    var horaFecha46 = ["08.00 hrs"]
    var horaFecha47 = ["10.00 hrs"]
    var horaFecha48 = ["17.00 hrs"]
    var horaFecha49 = ["13.00 hrs"]



    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var totalFilas = 0
        
        if section == 0{
            totalFilas = fecha0.count
        }
        if section == 1{
            totalFilas = fecha1.count
        }
        if section == 2{
            totalFilas = fecha2.count
        }
        if section == 3{
            totalFilas = fecha3.count
        }
        if section == 4{
            totalFilas = fecha4.count
        }
        if section == 5{
            totalFilas = fecha5.count
        }
        if section == 6{
            totalFilas = fecha6.count
        }
        if section == 7{
            totalFilas = fecha7.count
        }
        if section == 8{
            totalFilas = fecha8.count
        }
        if section == 9{
            totalFilas = fecha9.count
        }
        if section == 10{
            totalFilas = fecha10.count
        }
        if section == 11{
            totalFilas = fecha11.count
        }
        if section == 12{
            totalFilas = fecha12.count
        }
        if section == 13{
            totalFilas = fecha13.count
        }
        if section == 14{
            totalFilas = fecha14.count
        }
        if section == 15{
            totalFilas = fecha15.count
        }
        if section == 16{
            totalFilas = fecha16.count
        }
        if section == 17{
            totalFilas = fecha17.count
        }
        if section == 18{
            totalFilas = fecha18.count
        }
        if section == 19{
            totalFilas = fecha19.count
        }
        if section == 20{
            totalFilas = fecha20.count
        }
        if section == 21{
            totalFilas = fecha21.count
        }
        if section == 22{
            totalFilas = fecha22.count
        }
        if section == 23{
            totalFilas = fecha23.count
        }
        if section == 24{
            totalFilas = fecha24.count
        }
        if section == 25{
            totalFilas = fecha25.count
        }
        if section == 26{
            totalFilas = fecha26.count
        }
        if section == 27{
            totalFilas = fecha27.count
        }
        if section == 28{
            totalFilas = fecha28.count
        }
        if section == 29{
            totalFilas = fecha29.count
        }
        if section == 30{
            totalFilas = fecha30.count
        }
        if section == 31{
            totalFilas = fecha31.count
        }
        if section == 32{
            totalFilas = fecha32.count
        }
        if section == 33{
            totalFilas = fecha33.count
        }
        if section == 34{
            totalFilas = fecha34.count
        }
        if section == 35{
            totalFilas = fecha35.count
        }
        if section == 36{
            totalFilas = fecha36.count
        }
        if section == 37{
            totalFilas = fecha37.count
        }
        if section == 38{
            totalFilas = fecha38.count
        }
        if section == 39{
            totalFilas = fecha39.count
        }
        if section == 40{
            totalFilas = fecha40.count
        }
        if section == 41{
            totalFilas = fecha41.count
        }
        if section == 42{
            totalFilas = fecha42.count
        }
        if section == 43{
            totalFilas = fecha43.count
        }
        if section == 44{
            totalFilas = fecha44.count
        }
        if section == 45{
            totalFilas = fecha45.count
        }
        if section == 46{
            totalFilas = fecha46.count
        }
        if section == 47{
            totalFilas = fecha47.count
        }
        if section == 48{
            totalFilas = fecha48.count
        }
        if section == 49{
            totalFilas = fecha49.count
        }
        return totalFilas
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath)

        let section = indexPath.section
        
        var titulo:String = ""
        var subTitulo:String = ""
        
        if section == 0{
            titulo = fecha0[indexPath.row] as String
            subTitulo = horaFecha0[indexPath.row] as String
        }
        if section == 1{
            titulo = fecha1[indexPath.row] as String
            subTitulo = horaFecha1[indexPath.row] as String
        }
        if section == 2{
            titulo = fecha2[indexPath.row] as String
            subTitulo = horaFecha2[indexPath.row] as String
        }
        if section == 3{
            titulo = fecha3[indexPath.row] as String
            subTitulo = horaFecha3[indexPath.row] as String
        }
        if section == 4{
            titulo = fecha4[indexPath.row] as String
            subTitulo = horaFecha4[indexPath.row] as String
        }
        if section == 5{
            titulo = fecha5[indexPath.row] as String
            subTitulo = horaFecha5[indexPath.row] as String
        }
        if section == 6{
            titulo = fecha6[indexPath.row] as String
            subTitulo = horaFecha6[indexPath.row] as String
        }
        if section == 7{
            titulo = fecha7[indexPath.row] as String
            subTitulo = horaFecha7[indexPath.row] as String
        }
        if section == 8{
            titulo = fecha8[indexPath.row] as String
            subTitulo = horaFecha8[indexPath.row] as String
        }
        if section == 9{
            titulo = fecha9[indexPath.row] as String
            subTitulo = horaFecha9[indexPath.row] as String
        }
        if section == 10{
            titulo = fecha10[indexPath.row] as String
            subTitulo = horaFecha10[indexPath.row] as String
        }
        if section == 11{
            titulo = fecha11[indexPath.row] as String
            subTitulo = horaFecha11[indexPath.row] as String
        }
        if section == 12{
            titulo = fecha12[indexPath.row] as String
            subTitulo = horaFecha12[indexPath.row] as String
        }
        if section == 13{
            titulo = fecha13[indexPath.row] as String
            subTitulo = horaFecha13[indexPath.row] as String
        }
        if section == 14{
            titulo = fecha14[indexPath.row] as String
            subTitulo = horaFecha14[indexPath.row] as String
        }
        if section == 15{
            titulo = fecha15[indexPath.row] as String
            subTitulo = horaFecha15[indexPath.row] as String
        }
        if section == 16{
            titulo = fecha16[indexPath.row] as String
            subTitulo = horaFecha16[indexPath.row] as String
        }
        if section == 17{
            titulo = fecha17[indexPath.row] as String
            subTitulo = horaFecha17[indexPath.row] as String
        }
        if section == 18{
            titulo = fecha18[indexPath.row] as String
            subTitulo = horaFecha18[indexPath.row] as String
        }
        if section == 19{
            titulo = fecha19[indexPath.row] as String
            subTitulo = horaFecha19[indexPath.row] as String
        }
        if section == 20{
            titulo = fecha20[indexPath.row] as String
            subTitulo = horaFecha20[indexPath.row] as String
        }
        if section == 21{
            titulo = fecha21[indexPath.row] as String
            subTitulo = horaFecha21[indexPath.row] as String
        }
        if section == 22{
            titulo = fecha22[indexPath.row] as String
            subTitulo = horaFecha22[indexPath.row] as String
        }
        if section == 23{
            titulo = fecha23[indexPath.row] as String
            subTitulo = horaFecha23[indexPath.row] as String
        }
        if section == 24{
            titulo = fecha24[indexPath.row] as String
            subTitulo = horaFecha24[indexPath.row] as String
        }
        if section == 25{
            titulo = fecha25[indexPath.row] as String
            subTitulo = horaFecha25[indexPath.row] as String
        }
        if section == 26{
            titulo = fecha26[indexPath.row] as String
            subTitulo = horaFecha26[indexPath.row] as String
        }
        if section == 27{
            titulo = fecha27[indexPath.row] as String
            subTitulo = horaFecha27[indexPath.row] as String
        }
        if section == 28{
            titulo = fecha28[indexPath.row] as String
            subTitulo = horaFecha28[indexPath.row] as String
        }
        if section == 29{
            titulo = fecha29[indexPath.row] as String
            subTitulo = horaFecha29[indexPath.row] as String
        }
        if section == 30{
            titulo = fecha30[indexPath.row] as String
            subTitulo = horaFecha30[indexPath.row] as String
        }
        if section == 31{
            titulo = fecha31[indexPath.row] as String
            subTitulo = horaFecha31[indexPath.row] as String
        }
        if section == 32{
            titulo = fecha32[indexPath.row] as String
            subTitulo = horaFecha32[indexPath.row] as String
        }
        if section == 33{
            titulo = fecha33[indexPath.row] as String
            subTitulo = horaFecha33[indexPath.row] as String
        }
        if section == 34{
            titulo = fecha34[indexPath.row] as String
            subTitulo = horaFecha34[indexPath.row] as String
        }
        if section == 35{
            titulo = fecha35[indexPath.row] as String
            subTitulo = horaFecha35[indexPath.row] as String
        }
        if section == 36{
            titulo = fecha36[indexPath.row] as String
            subTitulo = horaFecha35[indexPath.row] as String
        }
        if section == 37{
            titulo = fecha37[indexPath.row] as String
            subTitulo = horaFecha37[indexPath.row] as String
        }
        if section == 38{
            titulo = fecha38[indexPath.row] as String
            subTitulo = horaFecha38[indexPath.row] as String
        }
        if section == 39{
            titulo = fecha39[indexPath.row] as String
            subTitulo = horaFecha39[indexPath.row] as String
        }
        if section == 40{
            titulo = fecha40[indexPath.row] as String
            subTitulo = horaFecha40[indexPath.row] as String
        }
        if section == 41{
            titulo = fecha41[indexPath.row] as String
            subTitulo = horaFecha41[indexPath.row] as String
        }
        if section == 42{
            titulo = fecha42[indexPath.row] as String
            subTitulo = horaFecha42[indexPath.row] as String
        }
        if section == 43{
            titulo = fecha43[indexPath.row] as String
            subTitulo = horaFecha43[indexPath.row] as String
        }
        if section == 44{
            titulo = fecha44[indexPath.row] as String
            subTitulo = horaFecha44[indexPath.row] as String
        }
        if section == 45{
            titulo = fecha45[indexPath.row] as String
            subTitulo = horaFecha45[indexPath.row] as String
        }
        if section == 46{
            titulo = fecha46[indexPath.row] as String
            subTitulo = horaFecha46[indexPath.row] as String
        }
        if section == 47{
            titulo = fecha47[indexPath.row] as String
            subTitulo = horaFecha47[indexPath.row] as String
        }
        if section == 48{
            titulo = fecha48[indexPath.row] as String
            subTitulo = horaFecha48[indexPath.row] as String
        }
        if section == 49{
            titulo = fecha49[indexPath.row] as String
            subTitulo = horaFecha49[indexPath.row] as String
        }
        
        cell.textLabel?.text = titulo
        cell.detailTextLabel?.text = subTitulo
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
