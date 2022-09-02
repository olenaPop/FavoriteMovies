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
    
    var favoritMoviearray: Set<Movie> = []

    @IBAction func addMovie(_ sender: Any) {
        let yearStrToInt = Int(yearOfMovie.text ?? "" )
        let newMovie = Movie(name: nameOfMovie.text ?? "Unknown",year: yearStrToInt ?? 00  )
        favoritMoviearray.insert(newMovie)
        nameOfMovie.text = ""
        yearOfMovie.text = ""
        tableMovie.insertRows(at: [IndexPath(row: favoritMoviearray.count - 1, section: 0)], with: .bottom)
        
        
    }
 
    override func viewDidLoad() {
        addButton.layer.cornerRadius = 10
        yearOfMovie.keyboardType = .numberPad
        
        super.viewDidLoad()
        tableMovie.dataSource = self
        tableMovie.delegate  = self
    }
}


