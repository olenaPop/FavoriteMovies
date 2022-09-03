//
//  ViewController.swift
//  FavoriteMovie
//
//  Created by Olena Makhobei on 01.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableMovie: UITableView!
    @IBOutlet weak var nameOfMovie: UITextField!
    @IBOutlet weak var yearOfMovie: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    var favoritMoviearray = NSMutableOrderedSet()

    @IBAction func addMovie(_ sender: Any) {
        let yearStrToInt = Int(yearOfMovie.text ?? "" )
        let newMovie = Movie(name: nameOfMovie.text ?? "Unknown",year: yearStrToInt ?? 00  )
        favoritMoviearray.add(newMovie)
        nameOfMovie.text = ""
        yearOfMovie.text = ""
        insertRow()
        
    }
    func insertRow(){
        tableMovie.beginUpdates()
        tableMovie.insertRows(at: [IndexPath(row: favoritMoviearray.count - 1, section: 0)], with: .bottom)
        tableMovie.endUpdates()
    }
 
    override func viewDidLoad() {
        addButton.layer.cornerRadius = 10
        yearOfMovie.keyboardType = .numberPad
        
        super.viewDidLoad()
        tableMovie.dataSource = self
        tableMovie.delegate  = self
    }
}


