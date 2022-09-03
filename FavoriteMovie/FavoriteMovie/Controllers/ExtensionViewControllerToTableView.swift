//
//  Extension View Controller.swift
//  FavoriteMovie
//
//  Created by Olena Makhobei on 01.09.2022.
//

import Foundation
import UIKit
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritMoviearray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableMovie.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        let movie = favoritMoviearray[indexPath.row] as! Movie
        cell.nameLbl.text = movie.name
        cell.yearLbl.text = String(movie.year)
        return cell
    }
    
    
}
