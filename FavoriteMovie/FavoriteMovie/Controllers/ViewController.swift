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
    
    var favoritMoviearray: [Movie] = []

    @IBAction func addMovie(_ sender: Any) {
       let newMovie = Movie(name: nameOfMovie.text ?? "Unknown",year: yearOfMovie.text ?? "Unknown")
        if checkDuplicates(lookedTitle: newMovie.name, lookedYear: newMovie.year) == true {
            favoritMoviearray.append(newMovie)
        }
        else{
          alertMessage()
        }
        tableMovie.reloadData()
        nameOfMovie.text = ""
        yearOfMovie.text = ""
    }
 
    func alertMessage(){
        let alert = UIAlertController(title: "Warning!", message: "Movie already exist.", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
    }
    
    func checkDuplicates(lookedTitle: String, lookedYear: String)->Bool{
        for oneMovie in favoritMoviearray {
            if lookedTitle == oneMovie.name && lookedYear == oneMovie.year
            {return false}
        }
        return true
    }
    
    override func viewDidLoad() {
        addButton.layer.cornerRadius = 10
        super.viewDidLoad()
        tableMovie.dataSource = self
        tableMovie.delegate  = self
    }
}


