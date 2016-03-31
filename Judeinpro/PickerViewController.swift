//
//  PickerViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 1/07/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var datoRecibido:String!
    
    var listaDepor = ["GOLPE","CANASTA","FRONTON","SAPO VARONES","SAPO DAMAS","AJEDREZ","FULBITO","TENIS CAMPO DAMAS","TENIS CAMPO VARONES","BOWLING DAMAS","BOWLING VARONES","BILLAR","TENIS DE MESA","NATACION","CARRERA","TIRO","CUENTO","POESIA","FOTOGRAFIA"]
    
    @IBOutlet weak var contenedorPromo: UILabel!

    @IBOutlet weak var labelPicker: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the background color to #fde8d7
        view.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        
        // Do any additional setup after loading the view.
        
        contenedorPromo.text = datoRecibido
        labelPicker.text = listaDepor[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Numero de componentes se baja de UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    // numero de filas se baja de UIPickerViewdataSource
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return listaDepor.count
        
    }
    
    //titulo del picker se baja de UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listaDepor[row]
    }
    
    // fila seleccionada se baja de UIPickerVewDelegat
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let nombreDepor = listaDepor[row]
        return labelPicker.text = nombreDepor
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        var pickerLabel = view as! UILabel!
        
        if view == nil {
            
            pickerLabel = UILabel()
            // color the labels background
            let hue = CGFloat(row)/CGFloat(listaDepor.count)
            pickerLabel.backgroundColor = UIColor(hue: hue,saturation:1.0, brightness: 1.0, alpha:1.0)
            pickerLabel.textAlignment = .Center
        }
        
        let titleData = listaDepor[row]
        let myTitle = NSAttributedString(string: titleData,attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 20.0)!, NSForegroundColorAttributeName:UIColor.blackColor()])
        pickerLabel.attributedText = myTitle
        
        return pickerLabel
    }
    
    // ancho del picker
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        
        return 280
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        navigationItem.title = ""
        let vistadetalle = segue.destinationViewController as! DetalleViewController
        let datoapasar1 = labelPicker.text
        let datoapasar2 = datoRecibido
        
        vistadetalle.data1 = datoapasar1
        vistadetalle.data2 = datoapasar2
        // data1 y data2 estan previamente definidos en DetalleViewCntroller

    }

}
