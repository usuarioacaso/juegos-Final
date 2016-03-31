//
//  DetalleViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 5/07/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var miTableView: UITableView!
    
    // ojo data1 y data 2 vienen de PickerViewController -> data1 es LabelPicker (deporte) y data2 es la promocion
    
    var data1:String!
    var data2:String!
    var datosBD = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //miTableView.scrollEnabled = true
        miTableView.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8, blue: 0xd7/255, alpha: 1.0)
        
        //instanciar y definir el objeto DAO
        
        let objDAO = DataBase()
        
        // seleccionamos la promocion de dato recibido (data2)
        //datosBD = objDAO.ejecutarSelect("SELECT * FROM promociones")
        //println(datosBD)
        //println(datosBD.count)
        
        if data2 == "1955" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1955 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1954" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1954 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1959" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1959 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1960" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1960 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1961" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1961 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1962" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1962 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1963" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1963 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1964" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1964 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1965" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1965 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1966" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1966 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1967" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1967 and promociones.fotografia = eventos.codeven")
            }
        }
        
        if data2 == "1967A" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1967A' and promociones.fotografia = eventos.codeven")
            }
        }
        
        if data2 == "1968" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1968 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1969" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1969 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1970" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1970 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1971" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1971 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1972" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1972 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1973" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1973 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1974" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1974 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1975A" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975A' and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1975B"{
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = '1975B' and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1976" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1976 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1977" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1977 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1978" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1978 and promociones.fotografia = eventos.codeven")
            }
        }
        if data2 == "1979" {
            if data1 == "GOLPE" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.golpe = eventos.codeven")
            }
            if data1 == "CANASTA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.canasta = eventos.codeven")
            }
            if data1 == "FRONTON" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.fronton = eventos.codeven")
            }
            if data1 == "SAPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.sapoV = eventos.codeven")
            }
            if data1 == "SAPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.sapoD = eventos.codeven")
            }
            if data1 == "AJEDREZ" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.ajedrez = eventos.codeven")
            }
            if data1 == "FULBITO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.fulbito = eventos.codeven")
            }
            if data1 == "TENIS CAMPO DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.teniscpoD = eventos.codeven")
            }
            if data1 == "TENIS CAMPO VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.teniscpoV = eventos.codeven")
            }
            if data1 == "BOWLING DAMAS" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.bowlingD = eventos.codeven")
            }
            if data1 == "BOWLING VARONES" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.bowlingV = eventos.codeven")
            }
            if data1 == "BILLAR" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.billar = eventos.codeven")
            }
            if data1 == "TENIS DE MESA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.tenisM = eventos.codeven")
            }
            if data1 == "NATACION" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.natacion = eventos.codeven")
            }
            if data1 == "CARRERA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.carrera = eventos.codeven")
            }
            if data1 == "TIRO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.tiro = eventos.codeven")
            }
            if data1 == "CUENTO" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.cuento = eventos.codeven")
            }
            if data1 == "POESIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.poesia = eventos.codeven")
            }
            if data1 == "FOTOGRAFIA" {
                datosBD = objDAO.ejecutarSelect("SELECT eventos.match, eventos.fecha,eventos.hora  FROM eventos, promociones WHERE promociones.promo = 1979 and promociones.fotografia = eventos.codeven")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datosBD.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.miTableView.dequeueReusableCellWithIdentifier("Cell") as! CustomTableViewCell
    
        let partido1 = datosBD[indexPath.row]["match"] as! NSString
        let fecha1   = datosBD[indexPath.row]["fecha"] as! NSString
        let hora1    = datosBD[indexPath.row]["hora"] as! NSString
    
        cell.primeraCelda.text = partido1 as String
        cell.segundaCelda.text = fecha1 as String
        cell.terceraCelda.text = hora1 as String
        
        cell.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        
        return cell
        
        // las celdas de CustomTableViewCell son : primeraCelda - segundaCelda - terceraCelda
        // table view - > view -> wight = 400 -> height 380

    }
}
