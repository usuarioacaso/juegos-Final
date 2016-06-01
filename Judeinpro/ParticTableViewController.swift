//
//  ParticTableViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit
import QuartzCore

class ParticTableViewController: UITableViewController {
    
    var listaPromos = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        // iniciamos la BD
        let objDAO1 = DataBase()
        listaPromos = objDAO1.ejecutarSelect("select * from participantes order by kanio")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaPromos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("celdaPromo", forIndexPath: indexPath) as! ParticTableViewCell

        let data = listaPromos[indexPath.row] as! NSDictionary
        
        cell.nomPromo.text = data["knombre"] as? String
        cell.anioPromo.text = data["kanio"] as? String
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        
        let nombreLogo = data["klogo"] as! String
        cell.logoPromo.image = UIImage(named: nombreLogo)

        return cell
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
        }    
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        navigationController?.navigationBar.tintColor = UIColor.yellowColor()
        navigationItem.title = "Participantes"
        let objVista2 = segue.destinationViewController as! PickerViewController
        let indexPath = tableView.indexPathForSelectedRow! as NSIndexPath
        let promocion = listaPromos[indexPath.row] as! NSDictionary
        objVista2.datoRecibido = promocion["kanio"] as! String
    }

}
